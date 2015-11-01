$(document).ready(function(){
	$("#category").click(function(){
	window.location.href = 'http://minetoolz.com#see-category';
	})
	$(".more-text").click(function(){
	window.location.href = 'http://www.minetoolz.com/construction.php';
	})
        $("#button").css("display","none");
        $("#share").mouseover(function(){
            $("#button").css("display","block");
            $("#button").delay(3000).fadeOut(50);
        })
        $(".container-1").css("background","#3e8da6");
        $("#header-tool-1").css("opacity","0");
        $("#toollink-1").css("opacity","0");
        $("#learnmore-1").css("opacity","0");
        $("#text-trello").css("opacity","0");
        $(".container-2").css("background","#3e8da6");
        $("#header-tool-2").css("opacity","0");
        $("#toollink-2").css("opacity","0");
        $("#learnmore-2").css("opacity","0");
        $("#text-squarespace").css("opacity","0");
        $(".container-3").css("background","#3e8da6");
        $("#header-tool-3").css("opacity","0");
        $("#toollink-3").css("opacity","0");
        $("#learnmore-3").css("opacity","0");
        $("#text-crazyegg").css("opacity","0");
        $(".container-4").css("background","#3e8da6");
        $("#header-tool-4").css("opacity","0");
        $("#toollink-4").css("opacity","0");
        $("#learnmore-4").css("opacity","0");
        $("#text-hootsuite").css("opacity","0");
        $(".container-7").css("background","#3e8da6");
        $("#header-tool-7").css("opacity","0");
        $("#toollink-7").css("opacity","0");
        $("#learnmore-7").css("opacity","0");
        $("#text-moqups").css("opacity","0");
        $(".container-5").css("background","#fab726");
        $("#header-tool-5").css("opacity","0");
        $("#toollink-5").css("opacity","0");
        $("#learnmore-5").css("opacity","0");
        $("#text-xtensio").css("opacity","0");
    $(".container-1").mouseover(function(){
        $(".container-1").css("background","#fff");
        $("#header-tool-1").css("opacity","1");
        $("#toollink-1").css("opacity","1");
        $("#learnmore-1").css("opacity","1");
        $("#text-trello").css("opacity","1");
        $("#text-desc-1").css("display","none");
        $("#logo-big-1").css("display","block");
    }).mouseleave(function(){
        $(".container-1").css("background","#3e8da6");
        $("#header-tool-1").css("opacity","0");
        $("#toollink-1").css("opacity","0");
        $("#learnmore-1").css("opacity","0");
        $("#text-trello").css("opacity","0");
        $("#text-desc-1").css("display","block");
        $("#logo-big-1").css("display","none"); 
    })
    $(".container-2").mouseover(function(){
        $(".container-2").css("background","#fff");
        $(".container-2").css("opacity","1");
        $("#header-tool-2").css("opacity","1");
        $("#toollink-2").css("opacity","1");
        $("#learnmore-2").css("opacity","1");
        $("#text-squarespace").css("opacity","1");
        $("#text-desc-2").css("display","none");
        $("#logo-big-2").css("display","block");
    }).mouseleave(function(){
        $(".container-2").css("background","#3e8da6");
        $(".container-2").css("opacity","1");
        $("#header-tool-2").css("opacity","0");
        $("#toollink-2").css("opacity","0");
        $("#learnmore-2").css("opacity","0");
        $("#text-squarespace").css("opacity","0");
        $("#text-desc-2").css("display","block");
        $("#logo-big-2").css("display","none");
    })
    $(".container-3").mouseover(function(){
        $(".container-3").css("background","#fff");
        $(".container-3").css("opacity","1");
        $("#header-tool-3").css("opacity","1");
        $("#toollink-3").css("opacity","1");
        $("#learnmore-3").css("opacity","1");
        $("#text-crazyegg").css("opacity","1");
        $("#text-desc-3").css("display","none");
        $("#logo-big-3").css("display","block");
    }).mouseleave(function(){
        $(".container-3").css("background","#3e8da6");
        $(".container-3").css("opacity","1");
        $("#header-tool-3").css("opacity","0");
        $("#toollink-3").css("opacity","0");
        $("#learnmore-3").css("opacity","0");
        $("#text-crazyegg").css("opacity","0");
        $("#text-desc-3").css("display","block");
        $("#logo-big-3").css("display","none");
    })
    $(".container-4").mouseover(function(){
        $(".container-4").css("background","#fff");
        $(".container-4").css("opacity","1");
        $("#header-tool-4").css("opacity","1");
        $("#toollink-4").css("opacity","1");
        $("#learnmore-4").css("opacity","1");
        $("#text-hootsuite").css("opacity","1");
        $("#text-desc-4").css("display","none");
        $("#logo-big-4").css("display","block");
    }).mouseleave(function(){
        $(".container-4").css("background","#3e8da6");
        $(".container-4").css("opacity","1");
        $("#header-tool-4").css("opacity","0");
        $("#toollink-4").css("opacity","0");
        $("#learnmore-4").css("opacity","0");
        $("#text-hootsuite").css("opacity","0");
        $("#text-desc-4").css("display","block");
        $("#logo-big-4").css("display","none");
    })
    $(".container-5").mouseover(function(){
        $(".container-5").css("background","#fff");
        $(".container-5").css("opacity","1");
        $("#text-desc-5").css("display","none");
        $("#logo-big-5").css("display","block");
    }).mouseleave(function(){
        $(".container-5").css("background","#3e8da6");
        $(".container-5").css("opacity","1");
        $("#text-desc-5").css("display","block");
        $("#logo-big-5").css("display","none");
    })
    $(".container-6").mouseover(function(){
        $(".container-6").css("background","#fff");
        $(".container-6").css("opacity","1");
        $("#text-desc-6").css("display","none");
        $("#logo-big-6").css("display","block");
    }).mouseleave(function(){
        $(".container-6").css("background","#3e8da6");
        $(".container-6").css("opacity","1");
        $("#text-desc-6").css("display","block");
        $("#logo-big-6").css("display","none");
    })
    $(".container-7").mouseover(function(){
        $(".container-7").css("background","#fff");
        $(".container-7").css("opacity","1");
        $("#header-tool-7").css("opacity","1");
        $("#toollink-7").css("opacity","1");
        $("#learnmore-7").css("opacity","1");
        $("#text-moqups").css("opacity","1");
        $("#text-desc-7").css("display","none");
        $("#logo-big-7").css("display","block");
    }).mouseleave(function(){
        $(".container-7").css("background","#3e8da6");
        $(".container-7").css("opacity","1");
        $("#header-tool-7").css("opacity","0");
        $("#toollink-7").css("opacity","0");
        $("#learnmore-7").css("opacity","0");
        $("#text-moqups").css("opacity","0");
        $("#text-desc-7").css("display","block");
        $("#logo-big-7").css("display","none");
    })
    $(".container-5").mouseover(function(){
        $(".container-5").css("background","#fff");
        $(".container-5").css("opacity","1");
        $("#header-tool-5").css("opacity","1");
        $("#toollink-5").css("opacity","1");
        $("#learnmore-5").css("opacity","1");
        $("#text-xtensio").css("opacity","1");
        $("#text-desc-5").css("display","none");
        $("#logo-big-5").css("display","block");
    }).mouseleave(function(){
        $(".container-5").css("background","#fab726");
        $(".container-5").css("opacity","1");
        $("#header-tool-5").css("opacity","0");
        $("#toollink-5").css("opacity","0");
        $("#learnmore-5").css("opacity","0");
        $("#text-xtensio").css("opacity","0");
        $("#text-desc-5").css("display","block");
        $("#logo-big-5").css("display","none");
    })
    $("#button-press").click(function(){
        window.location.href = 'http://www.minetoolz.com';
    })
    $("#logo").click(function(){
        window.location.href = 'http://www.minetoolz.com';
    })
    $("#seven-image").click(function(){
	window.location.href = 'http://www.minetoolz.com/tools.php';
    })
    $("#para-1").click(function(){
	window.location.href = 'http://www.minetoolz.com/tools.php';
    })
    $("#login").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })	
    $("#register").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })	
    $("#text-2-1").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })
    $("#text-3-1").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })
    $("#p").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })	
    $("#t").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })
    $("#m").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })
    $("#f").click(function(){
        window.location.href = 'http://www.minetoolz.com/construction.php';
    })
    $("#submit-resource").click(function(){
        window.location.href = 'http://www.minetoolz.com/submit.php';
    })
    $("#unibz").click(function(){
        window.location.href = 'http://www.unibz.it';
    })
    $("#image-skip-1").click(function(){
        $("body, html").animate({scrollTop: $( $(".heightfix-1")).offset().top}, 50);
    })
    $("#image-skip-2").click(function(){
        $("body, html").animate({scrollTop: $( $(".heightfix-2")).offset().top}, 50);
    })
    $("#image-skip-3").click(function(){
        $("body, html").animate({scrollTop: $( $(".heightfix-3")).offset().top}, 50);
    })
    $("#image-skip-4").click(function(){
        $("body, html").animate({scrollTop: $( $(".heightfix-4")).offset().top}, 50);
    })
    $("#image-category").click(function(){
        $("body, html").animate({scrollTop: $( $(".heightfix-4")).offset().top}, 50);
    })
    $("#email-txt").click(function(){
        $("#email-txt").val('');
    })
    $("#email-txt-qr").click(function(){
        $("#email-txt-qr").val('');
    })
    $("#text-comment-user-guest-1").click(function(){
        $text = $("#text-comment-user-guest-1").val();
        if($text == "write a comment..."){
        $("#text-comment-user-guest-1").val(" ");
        }
    })
    $("#image-mail").click(function(){
	    function emailvalidation($email_text) {
        $emailpattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        return $emailpattern.test( $email_text );
        }
	    $email_text = $("#email-txt").val();
	    if(emailvalidation($email_text)){
	    if($email_text !="" && $email_text !="Leave your email for updates at minetoolz.com"){
	    $.ajax({
	    type: "GET",
	    url: "mailw.php?sendersemail="+$("#email-txt").val(),
	    context: document.body
	    }).done(function() {
	    $( this ).addClass( "done" );
	    });
	    alert("Email has been sent!");
	    $("#email-txt").val('Leave your email for updates at minetoolz.com');
	    }
	    }
	    $email_text_qr = $("#email-txt-qr").val();
	    if(emailvalidation($email_text_qr)){
	    if($email_text_qr !="" && $email_text_qr !="Leave your email for updates at minetoolz.com"){
	    $.ajax({
	    type: "GET",
	    url: "mailw.php?sendersemail="+$("#email-txt-qr").val(),
	    context: document.body
	    }).done(function() {
	    $( this ).addClass( "done" );
	    });
	    alert("Email has been sent!");
	    $("#email-txt-qr").val('Leave your email for updates at minetoolz.com');
	    }
	    }
		})
$("#more-info").click(function(){
	    $(".cookies-info").fadeOut(1000);	
	})
})