

function sceneOne() {
	var tl = new TimelineLite({id:"one"});
	// Initial display for this step
	tl
	.to(".air-in", 0, {opacity: 0})
	.to(".air-flow", 0, {opacity: 0})
	.to("#sand-bubbles", 0, {opacity:0})
	.to(".vent-gas", 0, {opacity: 0})
	.to(".igniter", 0, {opacity: 0})
	.to("#igniter-flame", 0, {opacity: 0})
	.to(".heat-in", 0, {opacity: 0})
	.to(".heat-flow", 0, {opacity: 0})
	.to(".flames", 0, {opacity: 0})
	.to("#vent-hot-gas", 0, {opacity: 0})
	.to("#basket", 0, {opacity: 0})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0})
	
	// ["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "step8"]
	
	// step 1 animation
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#step1", 0, {opacity: 1})
	.from("#step1", 0.6, {y:150, autoAlpha:0})
	.to("#play1", 0.4, {autoAlpha:0.5})
	.to("#bed-pic", 2, {autoAlpha:0})
	.from(".vessel", 3, {drawSVG:0, ease: Sine.easeInOut}, "-=2")
	.from(".rocks", 1, {scaleY:0, transformOrigin: "bottom"}, 4)
	.from(".sand", 1.7, {scaleY:0, transformOrigin: "bottom"}, 5)
	.from("#play2", 0.4, {autoAlpha:0});
	
	return tl;
}

var triggerOne = new TimelineLite({
  paused: true
});
triggerOne.add(sceneOne());



function sceneTwo() {
	var tl = new TimelineLite({id:"two"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 0})
	.to(".heat-in", 0, {opacity: 0})
	.to(".flames", 0, {opacity: 0})
	.to("#vent-hot-gas", 0, {opacity: 0})
	.to("#basket", 0, {opacity: 0})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0, repeat:1})

	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play2", 0.4, {autoAlpha:0.5})
	.from("#step2", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.staggerFrom(".air-in", 0.7, {drawSVG:0, delay: 2}, 0.4, 0)
	.from(".air-flow", 3, {scaleY:0, transformOrigin: "bottom"}, 4)
	.staggerFrom(".sand-bubbles", 0.9, {scaleY:0, transformOrigin: "bottom", opacity:0, autoAlpha:0, repeat:-1}, 0.4, 4)
	.from(".vent-gas", 2, {scaleY:0, autoAlpha:0, transformOrigin: "bottom", opacity: 0, ease: Power1.easeOut}, 6)
	.from(".igniter", 0.5, { drawSVG:0}, 9)
	.from("#igniter-flame", 0.6, {scalex:0, transformOrigin: "left", autoAlpha:0}, 9.5)
	.from("#play3", 0.4, {autoAlpha:0}, 11);
	
	return tl;
}

var triggerTwo = new TimelineLite({
  paused: true
});
triggerTwo.add(sceneTwo());



function sceneThree() {
	var tl = new TimelineLite({id:"three"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 0})
	.to("#vent-hot-gas", 0, {opacity: 0})
	.to("#basket", 0, {opacity: 0})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0})
	
	
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play3", 0.4, {autoAlpha:0.5})
	.from("#step3", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.from("#play4", 0.4, {autoAlpha:0}, 8)
	
	.staggerFrom(".heat-in", 0.7, {drawSVG:0, opacity:1}, 0.5, 2)
	.from(".heat-flow", 3, {scaleY:0, transformOrigin: "bottom", opacity:1}, 4.5);
	
	return tl;
}

var triggerThree = new TimelineLite({
  paused: true
});
triggerThree.add(sceneThree());



function sceneFour() {
	var tl = new TimelineLite({id:"four"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 1})
	.to("#vent-hot-gas", 0, {opacity: 1})
	.to("#basket", 0, {opacity: 0})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0})
	
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play4", 0.4, {autoAlpha:0.5})
	.from("#step4", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.from("#play5", 0.4, {autoAlpha:0}, 6)
	
	.from("#vent-hot-gas", 4, {autoAlpha:0, opacity:0}, "-=3")
	
	.staggerFrom(".flame1", 0.6, {scaleY:0, transformOrigin: "bottom", delay: 1, autoAlpha:0, repeat:-1, ease: Power1.easeInOut}, 0.6, 1)
	.staggerFrom(".flame2", 0.55, {scaleY:0, transformOrigin: "bottom", delay: 2, autoAlpha:0, repeat:-1, ease: Power1.easeInOut}, 0.6, 1)
	.staggerFrom(".flame3", 0.65, {scaleY:0, transformOrigin: "bottom", delay: 3, autoAlpha:0, repeat:-1, ease: Power1.easeInOut}, 0.6, 1)
	.staggerFrom(".flame4", 0.7, {scaleY:0, transformOrigin: "bottom", delay: 1.5, autoAlpha:0, repeat:-1, ease: Power1.easeInOut}, 0.6, 1)
	.staggerFrom(".flame5", 0.6, {scaleY:0, transformOrigin: "bottom", delay: 2.5, autoAlpha:0, repeat:-1, ease: Power1.easeInOut}, 0.6, 1)
	
	;
	
	return tl;
}

var triggerFour = new TimelineLite({
  paused: true
});
triggerFour.add(sceneFour());



function sceneFive() {
	var tl = new TimelineLite({id:"five"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 1})
	.to("#vent-hot-gas", 0, {opacity: 1})
	.to("#basket", 0, {y:0, opacity: 1})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:1})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0})
	
	
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play5", 0.4, {autoAlpha:0.5})
	.from("#step5", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.from("#basket", 2, {y:-300, autoAlpha:0, ease: Power2.easeOut})
	.from(["#hooks-paint", "#discs-paint"], 1, {y:-150, autoAlpha:0, opacity:1, ease: Power2.easeOut}, "-=2")
	.from("#play6", 0.4, {autoAlpha:0}, 4);
	
	return tl;
}

var triggerFive = new TimelineLite({
  paused: true
});
triggerFive.add(sceneFive());



function sceneSix() {
	var tl = new TimelineLite({id:"six"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 1})
	.to("#vent-hot-gas", 0, {opacity: 1})
	.to("#basket", 0, {y:0, opacity: 1})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity: 1})
	.to(".air-up", 0, {opacity: 0})
	.to("#vent-flow", 0, {opacity: 0})
	
	
	
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play6", 0.4, {autoAlpha:0.5})
	.from("#step6", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.to(["#hooks-paint", "#discs-paint"], 5, {y:-150, autoAlpha:0, delay:1, opacity:0})
	.from("#play7", 0.4, {autoAlpha:0});
	
	return tl;
}

var triggerSix = new TimelineLite({
  paused: true
});
triggerSix.add(sceneSix());



function sceneSeven() {
	var tl = new TimelineLite({id:"seven"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 1})
	.to("#vent-hot-gas", 0, {opacity: 1})
	.to("#basket", 0, {opacity: 1, y:0})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0, y:0})
	.to(".air-up", 0, {opacity: 1})
	.to("#vent-flow", 0, {opacity: 1})
		
		
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.to("#play7", 0.4, {autoAlpha:0.5})
	.from("#step7", 0.4, {y:150, autoAlpha:0}, "-=0.4")
	.from("#play8", 0.4, {autoAlpha:0}, "+=3")
	.staggerFrom(".air-up", 1.5, {drawSVG:0}, 0.5, 1)
	.from(".vent-flow", 2, {drawSVG:0, autoAlpha:0, opacity:0, yoyo:true, repeat:-1}, 2);
	
	return tl;
}

var triggerSeven = new TimelineLite({
  paused: true
});
triggerSeven.add(sceneSeven());



function sceneEight() {
	var tl = new TimelineLite({id:"eight"});

	tl
	.to(".air-in", 0, {opacity: 1})
	.to(".air-flow", 0, {opacity: 1})
	.to("#sand-bubbles", 0, {opacity:1})
	.to(".vent-gas", 0, {opacity: 1})
	.to(".igniter", 0, {opacity: 1})
	.to("#igniter-flame", 0, {opacity: 1})
	.to(".heat-flow", 0, {opacity: 1})
	.to(".heat-in", 0, {opacity: 1})
	.to(".flames", 0, {opacity: 1})
	.to("#vent-hot-gas", 0, {opacity: 1})
	.to("#basket", 0, {opacity: 1})
	.to(["#hooks-paint", "#discs-paint"], 0, {opacity:0, y:0})
	.to(".air-up", 0, {opacity: 1})
	.to("#vent-flow", 0, {opacity: 1})
	
	
	
	.to(["#step0", "#step1", "#step2", "#step3", "#step4", "#step5", "#step6" ,"#step7", "#step8"], 0.8, {opacity: 0}, 0.2)
	.from("#step8", 0.6, {y:150, autoAlpha:0})
	.to("#play8", 0.4, {autoAlpha:0.5})
	.to(".heat-in", 1.5, {drawSVG:0}, 2)
	.fromTo(".heat-flow", 3, {opacity: 1}, {opacity: 0}, 3)
	.fromTo(".flames", 0.7, {opacity: 1}, {opacity: 0}, 4)
	.to("#vent-hot-gas", 4, {opacity:0}, 5)
	.to("#basket", 1.5, {y:-300, transformOrigin: "bottom", opacity: 0, ease: Power1.easeIn}, 6)
	
	.from("#startOver", 0.4, {autoAlpha:0, delay: 1});

	return tl;
}

var triggerEight = new TimelineLite({
  paused: true
});
triggerEight.add(sceneEight());




$("#play1").on("click", function(e) {
  e.preventDefault();
  triggerOne.restart();
});

$("#play2").on("click", function(e) {
  e.preventDefault();
  triggerTwo.restart();
});

$("#play3").on("click", function(e) {
  e.preventDefault();
  triggerThree.restart();
});

$("#play4").on("click", function(e) {
  e.preventDefault();
  triggerFour.restart();
});

$("#play5").on("click", function(e) {
  e.preventDefault();
  triggerFive.restart();
});

$("#play6").on("click", function(e) {
  e.preventDefault();
  triggerSix.restart();
});

$("#play7").on("click", function(e) {
  e.preventDefault();
  triggerSeven.restart();
});

$("#play8").on("click", function(e) {
  e.preventDefault();
  triggerEight.restart();
});




