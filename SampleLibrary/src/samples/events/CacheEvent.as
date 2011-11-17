/*
* Copyright (c) 2011 Research In Motion Limited.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package samples.events
{
	import flash.events.Event;
	
	public class CacheEvent extends Event
	{
        public var succeeded:Boolean;
        public var url:String;
        
		/**
		 * Event for cache loading operations
		 * @param url - file url string.
		 * @param success - success boolean.
		 */ 
		public function CacheEvent(url:String, success:Boolean=true)
		{
			super(url, false, false);
            this.url = url;
            succeeded = success;
		}
        
        override public function toString():String
        {
            return( formatToString( "CacheEvent", "url", "succeeded") ); 	
        }
        
        /** @private **/
        override public function clone():Event
        {
            return( new CacheEvent(url,succeeded) );	
        }

	}
}