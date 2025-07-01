package meldesExperiment.Model{

	import meldesExperiment.Model.*;
	import meldesExperiment.view.*;
	//import meldesExperiment.controller.*;
	import flash.events.EventDispatcher;
	import flash.events.Event;
	import flash.display.MovieClip;

	public class MeldesExperimentModel extends EventDispatcher {

		public static const UPDATE:String='update';
		
		var Length:Number = 3;
		var Lengthsqr=9;
		var lensqrL
		
		var massT
		var massL
		
		var freq;
		
		var g=9.8;
		var fmT;
		var fmL;
		var material;
		var f=60
		var fmpu=.000467
		var mpu=.000117
		var wT
		var wL
		var mass_scale=.0005;
		var total_massT;
		var total_massL;
		var scalelength;
		var volt:Number;
		var frequency;
		
		var massperunitT;
		var massperunitL;
		var gmpu;
		var tot_FrequencyT;
		var tot_FrequencyL;
		//var mass_in_pan
		
		var power:Boolean = new Boolean();
		var voltage:Number;
		
		
		
		
		public function setMaterial(material:String) {
			this.material=material;
		}
		public function getMaterial():String {
			return material;
		}
		public function setMassT(massT:Number) {
			this.massT=massT
			//trace(massT+"gm");
		}
		public function getMassT():Number  {
			return massT;
		}
		public function setMassL(massL:Number) {
			this.massL=massL
			
	
			//trace(massL+"gm")
			
		}
		public function getMassL():Number  {
			return massL();
		}
		public function setVolt(volt:Number){
			this.volt=volt
			//trace(volt +"volt")
		}
		public function getVolt():Number{
			return volt();
		}
		
		public function setFreq(freq:Number) {
			this.freq
			//frequency_FNL(frequency,mpu,g)
			//frequency_FNT();
			//trace(freq+"Hz")
			
		}
		public function getFreq():Number  {
			return freq
		}
		
		
		public function setscaleLength(scalelength:Number){
			this.scalelength=scalelength;
		}
		public function getscaleLength():Number{
			return scalelength;
		}
		
		
		public function set_g(g:Number) {
			this.g=g
			//trace(g+"m/s")
		 }
		public function get_g():Number {
			return g;
		}
		public function MeldesExperimentModel() {
			//create the data model
		}
		public function isPowerOn(power:Boolean){
			this.power = power;
		}
		public function getPower():Boolean{
			return power;
		}
		/*public function setVoltage(voltage:Number){
			this.voltage = voltage;
		}
		public function getVoltage():Number{
			return voltage;*/
		 
		public function frequency_FNT(f:Number,mpu:Number,g:Number ):Number   {
				fmT=f*f*4*mpu;
				//trace("tt"+fmT)
				gmpuT=g/fmpu
				massperunitT=fmT/g;
				tot_FrequencyT=Math.sqrt(gmpuT*massperunitT)
				//trace(tot_FrequencyT + "hh");
				return tot_FrequencyT;
			}
			public function frequency_FNL(f:Number,mpu:Number,g:Number):Number   {
				
				
		        fmL=f*f*mpu;
				gmpuL=g/mpu
				massperunitL=fmL/g;
				tot_FrequencyL=Math.sqrt(gmpuL*massperunitL).toExponential(2)
				//trace(tot_FrequencyL + "Hz");
				return tot_FrequencyL;
				
				
				}
			
			public function loops_distFNT(f:Number ,wT:Number ,g:Number ):Number 
			{
				 total_massT =mass_scale+wT;
				// trace("sulu"+total_massT);
				 fmT=f*f*4*mpu;
				
				 massperunitT=fmT/g;
				// trace("ww"+massperunitT)
				 loopLensqr_T=total_massT/massperunitT;
			     loopLen_T=Math.sqrt (loopLensqr_T);
				// trace(loopLen_T+"looplenth of trans")
				 return loopLen_T
			}
			public function loops_distFNL(f:Number ,wL:Number ,g:Number ):Number 
			{
				 total_massL =mass_scale+wL;
				 fmL=f*f*mpu;
				 massperunitL=fmL/g;
				 loopLensqr_L=total_massL/massperunitL;
			     loopLen_L=Math.sqrt (loopLensqr_L);
				// trace(loopLen_L+"looplenth of longi")
				 return loopLen_L
			}
			
			public function loops_FNT(f:Number ,wT:Number ,g:Number ):Number
			{
				total_massT = mass_scale+wT;
				fmT=f*f*4*mpu;
				massperunitT=fmT/g;
				loopLensqr_T=total_massT/massperunitT
				//trace("su"+loopLensqr_T);
				loopLen_T=Math.sqrt (loopLensqr_T);
				//trace(loopLen_T+"jj")
				loopsT=Math.sqrt(Lengthsqr/loopLensqr_T)
				//trace(loopsT +"no of loops trans");
				//trace(f,wT,g)
				return (loopsT);
			}
			public function loops_FNL(f:Number ,wL:Number ,g:Number ):Number 
			{ 	
			    total_massL =mass_scale+wL;
				//trace(total_massL+"total_massL")
			    fmL=f*f*mpu;
				
				massperunitL=fmL/g;
				//trace(massperunitL+"massperunitL")
		        loopLensqr_L=total_massL/massperunitL;
				//trace(loopLensqr_L+"loopLensqr_L")
				loopLen_L=Math.sqrt (loopLensqr_L);
			//	trace(loopLen_L+"loopLen_L")
				loopsL=Math.sqrt(Lengthsqr/loopLensqr_L)
				//trace(loopsL+" no of loops longi" );
				//trace(f,wL,g)
				return (loopsL);
			}
										
			
	}
}