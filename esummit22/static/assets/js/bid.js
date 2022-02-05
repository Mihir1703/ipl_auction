$("#bid").click(function(e){
    e.preventDefault();
        $.ajax({
            url:'',
            type:'get',

            success:function(response){
                $("#change").text("₹ " + response.price + "K"),
                console.log(response.price)
                console.log(response.current)
                if (response.Name) {
                    $("#name").text(" " + response.Name + "")
                }
                
                if (response.err) {
                    alert(response.err)
                }
            }
        });
})
