<view class="discovery-container"><view class="cu-bar search bg-white flex justify-center align-center"><block wx:if="{{display_location}}"><button data-event-opts="{{[['tap',[['navigateLocation',['$event']]]]]}}" class="cu-btn bg-f5-white round  shadow  margin-left" bindtap="__e"><text class="location-icon-size text-theme-color cuIcon-locationfill"></text><text class=" margin-left-xs location-text-color text-sm">{{''+userLocation}}</text></button></block><button data-event-opts="{{[['tap',[['navigateSearch',['$event']]]]]}}" class="cu-btn search-form round shadow bg-white flex justify-start" bindtap="__e"><text class="cuIcon-search"></text><text class="text-sm location-text-color">请输入关键词搜索</text></button></view><scroll-view class="bg-white nav shadow" style="border-bottom:1px solid #c8c8c8;" scroll-x scroll-with-animation="true" scroll-left="{{scroll_left}}"><block wx:for="{{menu_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="{{['cu-item tab-item-width flex text-center',index==TabCur?'text-theme-color active-text-border':'']}}" data-id="{{index}}" data-event-opts="{{[['tap',[['tabSelect',['$event']]]]]}}" bindtap="__e">{{''+item+''}}</view></block><block wx:if="{{map_poi.is_search}}"><view class="{{['cu-item tab-item-width flex text-center',4==TabCur?'text-theme-color active-text-border':'']}}" data-id="{{4}}" data-event-opts="{{[['tap',[['tabSelect',['$event']]]]]}}" bindtap="__e">搜索</view></block></scroll-view><swiper class="discovery-swiper" duration="{{400}}" id="swiper" current="{{TabCur}}" data-event-opts="{{[['change',[['tabSwiper',['$event']]]]]}}" bindchange="__e"><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y data-event-opts="{{[['scrolltolower',[['loadNextPage',['food']]]]]}}" bindscrolltolower="__e"><block wx:for="{{food_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container margin-bottom"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/food_default.png'}}" lazy-load="true"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel!=''}}"><view class="text-sm poi-text">{{item.type}}</view></block><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><block wx:if="{{loading}}"><loading vue-id="1" bind:__l="__l"></loading></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y data-event-opts="{{[['scrolltolower',[['loadNextPage',['play']]]]]}}" bindscrolltolower="__e"><block wx:for="{{play_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container margin-bottom"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/play.png'}}"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel!=''}}"><view class="text-sm poi-text">{{item.type}}</view></block><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><block wx:if="{{loading}}"><loading vue-id="2" bind:__l="__l"></loading></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y data-event-opts="{{[['scrolltolower',[['loadNextPage',['live']]]]]}}" bindscrolltolower="__e"><block wx:for="{{live_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container margin-bottom"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/house_default.png'}}"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel!=''}}"><view class="text-sm poi-text">{{item.type}}</view></block><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><block wx:if="{{loading}}"><loading vue-id="3" bind:__l="__l"></loading></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y data-event-opts="{{[['scrolltolower',[['loadNextPage',['sport']]]]]}}" bindscrolltolower="__e"><block wx:for="{{sport_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container margin-bottom"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/sport.png'}}"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel!=''}}"><view class="text-sm poi-text">{{item.type}}</view></block><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><block wx:if="{{loading}}"><loading vue-id="4" bind:__l="__l"></loading></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item><block wx:if="{{map_poi.is_search}}"><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y data-event-opts="{{[['scrolltolower',[['loadNextPage',['search']]]]]}}" bindscrolltolower="__e"><block wx:for="{{search_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container margin-bottom"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/search.png'}}"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel!=''}}"><view class="text-sm poi-text">{{item.type}}</view></block><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><block wx:if="{{loading}}"><loading vue-id="5" bind:__l="__l"></loading></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item></block></swiper></view>