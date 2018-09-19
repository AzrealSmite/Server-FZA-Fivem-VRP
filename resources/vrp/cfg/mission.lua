
local cfg = {}

cfg.display_css = [[

/*-----------------------------------------------------------------------------*/

/*                         ANIMAÇAO HUD  by: Koringa                         */

/*-----------------------------------------------------------------------------*/
@-webkit-keyframes koringaborda {
  0% {
    box-shadow: 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e;
    -webkit-transform: translateX(0) translateY(0);
            transform: translateX(0) translateY(0);
  }
  100% {
    box-shadow: 1px -1px #3e3e3e, 2px -2px #3e3e3e, 3px -3px #3e3e3e, 4px -4px #3e3e3e, 5px -5px #3e3e3e, 6px -6px #3e3e3e, 7px -7px #3e3e3e, 8px -8px #3e3e3e;
    -webkit-transform: translateX(-8px) translateY(8px);
            transform: translateX(-8px) translateY(8px);
  }
}
@keyframes koringaborda {
  0% {
    box-shadow: 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e, 0 0 #3e3e3e;
    -webkit-transform: translateX(0) translateY(0);
            transform: translateX(0) translateY(0);
  }
  100% {
    box-shadow: 1px -1px #3e3e3e, 2px -2px #3e3e3e, 3px -3px #3e3e3e, 4px -4px #3e3e3e, 5px -5px #3e3e3e, 6px -6px #3e3e3e, 7px -7px #3e3e3e, 8px -8px #3e3e3e;
    -webkit-transform: translateX(-8px) translateY(8px);
            transform: translateX(-8px) translateY(8px);
  }
}

/*-----------------------------------------------------------------------------*/

/*                         ANIMAÇAO TEXTO  by: Koringa                        */

/*-----------------------------------------------------------------------------*/

@-webkit-keyframes koringafocus {
  0% {
    -webkit-filter: blur(12px);
            filter: blur(12px);
    opacity: 0;
  }
  100% {
    -webkit-filter: blur(0px);
            filter: blur(0px);
    opacity: 1;
  }
}
@keyframes koringafocus {
  0% {
    -webkit-filter: blur(12px);
            filter: blur(12px);
    opacity: 0;
  }
  100% {
    -webkit-filter: blur(0px);
            filter: blur(0px);
    opacity: 1;
  }
}



@font-face {
  font-family: "bankgothic";
  src: url(nui://vrp_esx_menu/gui/font/bankgothic.ttf);
}
	
.div_mission{
  position: absolute;
  -webkit-animation: koringaborda 0.3s cubic-bezier(0.470, 0.000, 0.745, 0.715) forwards;
  animation: koringaborda 0.3s cubic-bezier(0.470, 0.000, 0.745, 0.715) forwards;
  border-radius:0px 0px 0px 9px;
  -moz-border-radius:0px 0px 0px 9px;
  -webkit-border-radius:0px 0px 0px 9px;
  top: 220px;
  right: 1px;
  font-family: Arial Black,Arial Bold,Gadget,sans-serif; 
  text-transform: uppercase;
  font-size: 0.8em;
  text-align: center;
  background-color: rgb(52,58,64);
  color: white;
  padding: 8px;
  width:20px:
}

.div_mission .name{
 -webkit-animation: koringafocus 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
  animation: koringafocus 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
  font-family: Arial Black,Arial Bold,Gadget,sans-serif; 
  text-transform: uppercase;
  font-size: 1em;
  color: white;
}

.div_mission .step{
  -webkit-animation: koringafocus 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
  animation: koringafocus 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
  font-family: Arial Black,Arial Bold,Gadget,sans-serif;
  text-transform: uppercase;  
  color: rgb(0,255,0);
  font-weight: bold;
}
]]

return cfg
