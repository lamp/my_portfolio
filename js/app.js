Number.prototype.upto = function(up, func){
	d = this;
	for(d; d <= up; d++){
		func(d);
	}
};

$(document).ready(function(){
	num = 1;
	num.upto(11, function(){
		left = Math.random() * 90;
		$('#flowers').append('<div class="left" style="padding-left:'+left+'px;"><img src="/images/flower.png"/></div>');
	});
	$('#flowers').append('<div class="clear"></div>');
});
