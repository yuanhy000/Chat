<view class="store-container"><scroll-view class="{{['DrawerPage',displayCategory==true?'show':'']}}" scroll-y><view class="cu-bar search bg-white flex justify-center align-center padding-bottom padding-top"><button data-event-opts="{{[['tap',[['showModal',['$event']]]]]}}" class="cu-btn bg-f5-white round  shadow  margin-left" bindtap="__e"><block wx:if="{{categoryName!=''}}"><text class=" margin-left-xs location-text-color text-sm">{{categoryName}}</text></block><block wx:else><text class=" margin-left-xs location-text-color text-sm">选择分类</text></block></button><button data-event-opts="{{[['tap',[['navigateSearch',['$event']]]]]}}" class="cu-btn search-form round shadow bg-white flex justify-start" bindtap="__e"><text class="cuIcon-search"></text><text class="text-sm location-text-color">请输入关键词搜索</text></button></view></scroll-view><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="{{['DrawerClose',displayCategory==true?'show':'']}}" bindtap="__e"><text class="cuIcon-pullright"></text></view><scroll-view class="{{['DrawerWindow DrawerBackground no-padding ',displayCategory==true?'show':'']}}" scroll-y><view class="cu-list menu card-menu margin-top-xl margin-bottom-xl shadow-lg"><block wx:for="{{categoryList}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view data-event-opts="{{[['tap',[['ChangeCategory',[index]]]]]}}" class="cu-item arrow" bindtap="__e"><view class="content"><text class="category-title">{{item.category_name}}</text></view></view></block></view></scroll-view></view>