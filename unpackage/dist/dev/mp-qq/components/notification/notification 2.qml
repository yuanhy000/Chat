<view class="popup_list"><block wx:for="{{popup_list}}" wx:for-item="items" wx:for-index="index" wx:key="uuid"><view id="{{items.uuid}}"><view data-event-opts="{{[['tap',[['close',['$0',index],[[['popup_list','uuid',items.uuid,'uuid']]]]]]]}}" class="{{['mpopup',items.animator,items.typeClass]}}" style="{{'background:'+(items.color)+';'+('top:'+(index*distance+75+'px')+';')}}" bindtap="__e"><view class="pic"><image class="icon" mode="aspectFit" src="{{items.icon}}"></image></view><text class="text" style="{{'color:'+(items.colortext)+';'}}">{{items.content}}</text></view></view></block></view>