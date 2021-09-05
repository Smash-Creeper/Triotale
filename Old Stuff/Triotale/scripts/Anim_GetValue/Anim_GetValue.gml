///@arg tween
///@arg ease
///@arg time
///@arg arg_0*
///@arg arg_1*
function Anim_GetValue() {
	var TWEEN=argument[0];
	var EASE=argument[1];
	var TIME=argument[2];
	var ARG_0=0;
	var ARG_1=0;
	if(argument_count>=4){
		ARG_0=argument[3];
	}
	if(argument_count>=5){
		ARG_1=argument[4];
	}

	var r=0;
	var q=TIME;
	var b=0;
	var c=1;
	var d=1;

	switch(TWEEN){
		case ANIM_TWEEN.LINEAR:
			r=(q/d)*c+b;
			break;
		
		case ANIM_TWEEN.SINE:
			switch(EASE){
				case ANIM_EASE.IN:
					r=-c*cos(q/d*(pi/2))+c+b;
					break;
				case ANIM_EASE.OUT:
					r=c*sin(q/d*(pi/2))+b;
					break;
				case ANIM_EASE.IN_OUT:
					r=-c/2*(cos(pi*q/d)-1)+b;
					break;
			}
			break;
		
		case ANIM_TWEEN.QUAD:
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=c*q*q+b;
					break;
				case ANIM_EASE.OUT:
					q/=d;
					r=-c*q*(q-2)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2;
					if(q<1){
						r=c/2*q*q+b;
					}else{
						r=-c/2*((--q)*(q-2)-1)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.CUBIC:
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=c*q*q*q+b;
					break;
				case ANIM_EASE.OUT:
					q=q/d-1
					r=c*(q*q*q+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2
					if(q<1){
						r=c/2*q*q*q+b;
					}else{
						q-=2;
						r=c/2*(q*q*q+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.QUART:
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=c*q*q*q*q+b;
					break;
				case ANIM_EASE.OUT:
					q=q/d-1;
					r=-c*(q*q*q*q-1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2
					if(q<1){
						r=c/2*q*q*q*q+b;
					}else{
						q-=2;
						r=-c/2*(q*q*q*q-2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.QUINT:
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=c*q*q*q*q*q + b;
					break;
				case ANIM_EASE.OUT:
					q=q/d-1;
					r=c*(q*q*q*q*q+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2
					if(q<1){
						r=c/2*q*q*q*q*q+b;
					}else{
						q-=2;
						r=c/2*(q*q*q*q*q+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.EXPO:
			switch(EASE){
				case ANIM_EASE.IN:
					if(q==0){
						r=b;
					}else{
						r=c*power(2,10*(q/d-1))+b;
					}
					break;
				case ANIM_EASE.OUT:
					if(q==d){
						r=b+c;
					}else{
						r=c * (-power(2,-10*q/d)+1)+b;
					}
					break;
				case ANIM_EASE.IN_OUT:
					if (q==0){
						r=b;
					}
					if(q==d){
						r=b+c;
					}
					q/=d/2;
					if (q<1){
						r=c/2*power(2,10*(q-1))+b;
					}else{
						r=c/2*(-power(2,-10*--q)+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.CIRC:
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=-c*(sqrt(1-q*q)-1)+b;
					break;
				case ANIM_EASE.OUT:
					q=q/d-1;
					r=c*sqrt(1-q*q)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2;
					if(q<1){
						r=-c/2*(sqrt(1-q*q)-1)+b;
					}else{
						q-=2;
						r=c/2*(sqrt(1-q*q)+1)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.BACK:
			if(ARG_0>0){
				var s=ARG_0;
			}else{
				var s=1.70158;
			}
			switch(EASE){
				case ANIM_EASE.IN:
					q/=d;
					r=c*q*q*((s+1)*q-s)+b;
					break;
				case ANIM_EASE.OUT:
					q=q/d-1;
					r=c*(q*q*((s+1)*q+s)+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					q/=d/2;
					s*=1.525;
					if(q<1){
						r=c/2*(q*q*((s+1)*q-s))+b;
					}else{
						q-=2;
						r=c/2*(q*q*((s+1)*q+s)+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.ELASTIC:
			var a=ARG_0;
			var p=ARG_1;
			switch(EASE){
				case ANIM_EASE.IN:
					if(q==0){
						r=b;
						break;
					}
					q/=d;
					if(q==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					q-=1;
					r=-(a*power(2,10*q)* sin((q*d-s)*(2*pi)/p))+b;
					break;
				case ANIM_EASE.OUT:
					if(q==0){
						r=b;
						break;
					}
					q/=d;
					if(q==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					r=a*power(2,-10*q)*sin((q*d-s)*(2*pi)/p)+c+b;
					break;
				case ANIM_EASE.IN_OUT:
					if(q==0){
						r=b;
						break;
					}
					q/=d/2;
					if(q==2){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*(0.3*1.5);
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					q-=1;
					if(q<1){
						r=-0.5*(a*power(2,10*q)*sin((q*d-s)*(2*pi)/p))+b;
					}else{
						r=a*power(2,-10*q)*sin((q*d-s)*(2*pi)/p )*0.5+c+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.BOUNCE:
			switch(EASE){
				case ANIM_EASE.IN:
					q=d-q;
					q/=d;
					if (q<1/2.75){
						r=c*(7.5625*q*q);
					}else if(q<2/2.75){
						q-=1.5/2.75;
						r=c*(7.5625*q*q+0.75);
					}else if(q<2.5/2.75) {
						q-=2.25/2.75;
						r=c*(7.5625*q*q+0.9375);
					}else{
						q-=2.625/2.75;
						r=c*(7.5625*q*q +0.984375);
					}
					r=c-r+b;
					break;
				case ANIM_EASE.OUT:
					q/=d;
					if (q<1/2.75){
						r=c*(7.5625*q*q)+b;
					}else if(q<2/2.75){
						q-=1.5/2.75;
						r=c*(7.5625*q*q+0.75)+b;
					}else if(q<2.5/2.75) {
						q-=2.25/2.75;
						r=c*(7.5625*q*q+0.9375)+b;
					}else{
						q-=2.625/2.75;
						r=c*(7.5625*q*q +0.984375)+b;
					}
					break;
				case ANIM_EASE.IN_OUT:
					var ease_in;
					if(q<d/2){
						q*=2;
						ease_in=true;
					}else{
						q*=2;
						q-=d;
						ease_in=false;
					}
				
					q/=d;
					if (q<1/2.75){
						r=c*(7.5625*q*q);
					}else if(q<2/2.75){
						q-=1.5/2.75;
						r=c*(7.5625*q*q+0.75);
					}else if(q<2.5/2.75) {
						q-=2.25/2.75;
						r=c*(7.5625*q*q+0.9375);
					}else{
						q-=2.625/2.75;
						r=c*(7.5625*q*q +0.984375);
					}
				
					if(ease_in){
						r=r*0.5+b;
					}else{
						r=r*0.5+c*0.5+b;
					}
					break;
			}
			break;
	}

	return r;


}
