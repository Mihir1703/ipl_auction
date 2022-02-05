from django.contrib.admin import AdminSite


class MyAdminSite(AdminSite):
    site_title = 'IPL Auction admin'

    site_header = 'My administration'

    index_title = 'Site administration'


admin_site = MyAdminSite()
