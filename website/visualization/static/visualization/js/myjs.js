$('select').addClass('shadow_select');
$('select').wrap('<span class="select-wrapper" />');
$('.select-wrapper').width($(this).width());

$('select').focusin(function() {
    $('.select-wrapper').addClass('webkit_specific');
});

$('select').focusout(function() {
    $('.select-wrapper').removeClass('webkit_specific');
});

$("#largeTextbox").keyup(function(event){
    if(event.keyCode == 13){
        $("#submitButton").click();
    }
});

function show(text){
	output = "Crunching the numbers..."
	document.getElementById("scoreOutput").innerHTML = output;
	$.ajax({
        type: 'POST',
        url: '/test_results/',
        data: {
        	title : text
        },
        success: function (data) {
			//Insert Regression function Here
			output = "Woo Hoo! It looks like when this post settles down, it will have a score of: "
			document.getElementById("scoreOutput").innerHTML = output;
			var score = data;
			document.getElementById("scoreValue").innerHTML = score;
			output2 = "So how was this done? Well we used our CLF to predict the probability of your post being popular.Then we ran it through our regression model to predict your score! If you'd like to see more, check out the video below or if you'd like to see <b>an even better predictor</b> visit our <a href='http://nbviewer.ipython.org/github/intelligent-dolphins/blob/master/ProcessBook.ipynb'>Process Book</a>"			
			document.getElementById("scoreOutput2").innerHTML = output2;
			output3 = '<iframe width="560" height="315" src="//www.youtube.com/embed/gaTtRLYUFtA" frameborder="0" allowfullscreen></iframe>'	
			document.getElementById("scoreOutput3").innerHTML = output3;
			output4 = ''
			document.getElementById("scoreOutput4").innerHTML = output4;
        },
        error: function(request, status, error) {
            alert(request.responseText);
        }
    });
    return false;
}