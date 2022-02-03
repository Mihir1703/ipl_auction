from django.contrib.sessions.models import Session


class OneSessionPerUserMiddleware:
    # Called only once when the web server starts
    def __init__(self, get_response):
        self.get_response = get_response

    # Called once per request
    def __call__(self, request):
        # This codition is required because anonymous users
        # dont have access to 'logged_in_user'
        if request.user.is_authenticated:
            # Gets the user's session_key from the database
            current_session_key = request.user.logged_in_user.session_key
            # If the session_key exists in the db and it is different from the browser's session
            if current_session_key and current_session_key != request.session.session_key:
                Session.objects.get(session_key=current_session_key).delete()
            # Update the user's session_key in the db
            request.user.logged_in_user.session_key = request.session.session_key
            request.user.logged_in_user.save()

        response = self.get_response(request)
        return response
