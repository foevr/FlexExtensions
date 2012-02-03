package com.Notification.RemoteNotification
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	
	public class RemoteNotification extends EventDispatcher
	{
		private  static const EXTENSION_ID:String="com.Notification.RemoteNotification.RemoteNotification";
		
		private var context:ExtensionContext;
		
		public function RemoteNotification(target:IEventDispatcher=null)
		{
			context=ExtensionContext.createExtensionContext(EXTENSION_ID ,null);
		//	context.addEventListener(StatusEvent.STATUS,onStatus);
		}
		
		public function RegistRemoteNotification():Boolean
		{
			return context.call("registRemoteNotification",null);
		}
		
		public function dispose():void
		{
			context.dispose();
		}
	}
}