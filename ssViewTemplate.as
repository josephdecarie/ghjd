package application
{
	import flash.display.Sprite;
	import flash.events.Event;
	

	public class ViewTemplate extends Sprite implements IViewTemplate
	{
		// CONSTANTS --------------------
		
		// STAGE INSTANCES --------------
		protected var _display:LoginViewDisplay;
		// DATA -------------------------
		
		public function ViewTemplate()
		{
			/// vonjoru
			super();
			addEventListener(Event.ADDED_TO_STAGE, addedHandler);
		}
		
		/**
		 * addedHandler
		 *
		 *
		 * @access protected
		 * @params e:Event
		 * @return void
		 */
		protected function addedHandler(e:Event) : void
		{
			trace("LoginView : " + " addedHandler()");
			
			removeEventListener(Event.ADDED_TO_STAGE, addedHandler);
			//
			configUI();
			configEventHandling();
		}
		
		/**
		 * configUI
		 *
		 *
		 * @access protected
		 * @params 
		 * @return void
		 */
		protected function configUI() : void
		{
			display = new LoginViewDisplay();
			//
			// view UI setUp
			//
			
			
		}
		
		/**
		 * configEventHandling
		 *
		 *
		 * @access protected
		 * @params 
		 * @return void
		 */
		protected function configEventHandling() : void
		{
			// events
			
		}
		
		/**
		 * setHidden
		 *
		 *
		 * @access public
		 * @params 
		 * @return void
		 */
		public function setHidden() : void
		{
			removeChild(display);
			//			visible = false;
		}
		
		/**
		 * setShown
		 *
		 *
		 * @access public
		 * @params 
		 * @return void
		 */
		public function setShown() : void
		{
			addChild(display);
			//			x = -width;
			//			visible = true;
			//			TweenMax.to(this,.5,{x:0});
		}
		
		public function get display():CreateAccountViewDisplay
		{
			return _display;
		}
		public function set display(display:CreateAccountViewDisplay):void 
		{
			_display = display;
		}
	}
}