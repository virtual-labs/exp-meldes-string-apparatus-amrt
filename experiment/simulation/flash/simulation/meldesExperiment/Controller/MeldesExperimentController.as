package meldesExperiment.Controller{
	import meldesExperiment.Model.*;
	import flash.events.Event;
	import fl.events.SliderEvent;
	import flash.events.MouseEvent;
	
	public class MeldesExperimentController {	
		var model:MeldesExperimentModel;		
public function MeldesExperimentController(model:MeldesExperimentModel) { 
			// attach model			
			this.model = model;			
		}
		public function materialComboboxSelect(e:Event):MeldesExperimentModel{
			if(e == null){
				model.setFreq(60);
				//model.setEmissivity(0.77);
			}else{
				if(e.target.selectedIndex == 0){
					model.setFreq(60);
					//model.setEmissivity(0.77);
				}else if(e.target.selectedIndex == 1){					
					model.setFreq(55);
					//model.setEmissivity(0.68);
				}else if(e.target.selectedIndex == 2){
					model.setFreq(50);
					//model.setEmissivity(0.61);
				}else if(e.target.selectedIndex == 3){
					model.setFreq(45);
					//model.setEmissivity(0.85);
				}else if(e.target.selectedIndex == 4){
					model.setFreq(40);
					//model.setEmissivity(0.78);
				
					
				}					
			}
			return model;			
		}
		public function environmentComboboxSelect(e:Event):MeldesExperimentModel{
			if(e == null){
				model.set_g(9.8);
				//model.setEmissivity(0.77);
			}else{
				if(e.target.selectedIndex == 0){
					model.set_g(9.8);
					//model.setEmissivity(0.77);
				}else if(e.target.selectedIndex == 1){					
					model.set_g(9.01);
					//model.setEmissivity(0.68);
				}else if(e.target.selectedIndex == 2){
					model.set_g(11.28);
					//model.setEmissivity(0.61);
				}else if(e.target.selectedIndex == 3){
					model.set_g(25.93);
					//model.setEmissivity(0.85);
					
				}
			}
			return model;			
		}
		
		
		public function mass_l_slider_FN(e:SliderEvent):void {
			if (e==null) {
				model.setMassL(5);
			}
			 else {
			model.setMassL(e.target.value/1000);
			
		}
		}
		
		public function mass_t_slider_FN(e:SliderEvent):void {
			if (e==null) {
				model.setMassT(10);
			}
			 else {
			model.setMassT(e.target.value/1000);
			 }
		}
		
		public function scale_pos_slider_FN(e:SliderEvent):void {
			if (e==null) {
				model.setscaleLength(0);
			}
			 else {
				model.setscaleLength(e.target.value);
			}
		
		}
		public function volt_Slider_FN(e:SliderEvent):void {
			if (e==null) {
				model.setVolt(2);
			}
			 else {
				model.setVolt(e.target.value);
			}
		
		}
		
		/*public function VoltageKnob_FN(angle:Number){
			if(angle == -80){
				model.setVoltage("T1");				
			}else if(angle == -48){
				model.setVoltage("T2");
			}else if(angle == -16){
				model.setVoltage("T3");
			}else if(angle == 16){
				model.setVoltage("T4");
			}else if(angle == 48){
				model.setVoltage("T5");
			}else if(angle == 80){
				model.setVoltage("T6");
			}
			
		}*/
	}
}
		
	