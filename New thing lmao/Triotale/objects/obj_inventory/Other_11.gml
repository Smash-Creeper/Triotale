///@desc DEF
switch curi1 {
	case 9:
	var temp0= 20, temp1= 19;
	break;
	case 8:
	var temp0= 18, temp1= 17;
	break;
	case 7:
	var temp0= 16, temp1= 15;
	break;
	case 6:
	var temp0= 14, temp1= 13;
	break;
	case 5:
	var temp0= 12, temp1= 11;
	break;
	case 4:
	var temp0= 10, temp1= 9;
	break;
	case 3:
	var temp0= 8, temp1= 7;
	break;
	case 2:
	var temp0= 6, temp1= 5;
	break;
	case 1:
	var temp0= 4, temp1= 3;
	break;
	case 0:
	var temp0= 2, temp1= 1;
	break;
	default:
	var temp0= -999, temp1= -1000;
	break;
}
var thing= global.def;
switch thing {case temp0:	subimg1= 1;	break;	case temp1:	subimg1= 2;	break;} if temp0<= thing {subimg1= 1;} if temp1>= thing {subimg1= 3;}