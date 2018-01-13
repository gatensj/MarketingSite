var myCount = 0;

setInterval(function(){ 
    fixImageSRC();
 }, 100);

function fixImageSRC(){

    $('img').each(
        function(){

            var attr = $(this).attr('data-image');

            if (typeof attr !== typeof undefined && attr !== false) {

                if (myCount < 1)
                {
                var text = $(this).attr('src');
                text = text.replace("media/vagrant/projects/lynda/mysite/uploads/", "media/");
                $(this).attr('src', text);
                }

            }

        });
}


