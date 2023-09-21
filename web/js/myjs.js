

function doLike(bid, id) {
  console.log(bid);
  console.log(id);
    const d = {
        id: id,
        bid: bid,
        operation: 'like'
    };
    

    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            if(data.trim() === 'true')
            {
                let c = $(".like-counter").html();
                c++;
                $('.like-counter').html(c);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }


    });
    }