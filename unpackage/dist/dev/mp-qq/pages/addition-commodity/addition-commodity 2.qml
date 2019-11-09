<view class="addition-container"><cu-custom vue-id="1" bgColor="bg-gradual-tab" isBack="{{true}}" bind:__l="__l" vue-slots="{{['backText','content']}}"><view slot="backText">返回</view><view slot="content">Addition</view></cu-custom><scroll-view class="DrawerPage" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y id="scroll"><view class="cu-tabbar-height bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center "><input class="margin-left margin-right text-sm" type="text" placeholder="物品名称" data-event-opts="{{[['input',[['__set_model',['','title','$event',[]]]]]]}}" value="{{title}}" bindinput="__e"/></view><view class="cu-form-group margin-left margin-top margin-right margin-bottom border-radius bg-white shadow"><textarea class="textarea-font-size" placeholder="详细描述..." data-event-opts="{{[['input',[['__set_model',['','content','$event',[]]]]]]}}" value="{{content}}" bindinput="__e"></textarea></view><view class="cu-form-group margin-left margin-right margin-top margin-bottom border-rad ius bg-white border-radius shadow"><view class="grid col-4 grid-square flex-sub  margin-top"><block wx:for="{{selectImageList}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="bg-img" data-url="{{selectImageList[index]}}" data-event-opts="{{[['tap',[['ViewImage',['$event']]]]]}}" bindtap="__e"><image src="{{selectImageList[index]}}" mode="aspectFill"></image><view class="cu-tag bg-red" data-index="{{index}}" data-event-opts="{{[['tap',[['DelImg',['$event']]]]]}}" catchtap="__e"><text class="cuIcon-close"></text></view></view></block><block wx:if="{{selectImageList.length<9}}"><view data-event-opts="{{[['tap',[['ChooseImage',['$event']]]]]}}" class="solids" bindtap="__e"><text class="cuIcon-cameraaddfill text-theme-color"></text></view></block></view></view><view class="cu-form-group margin-left margin-right margin-top margin-bottom border-radius bg-white shadow flex-direction"><view data-event-opts="{{[['tap',[['showModal',['$event']]]]]}}" class="cu-form-group flex justify-between margin-left-sm no-padding" style="width:100%;" bindtap="__e"><view class="title checkbox-title">选择分类</view><block wx:if="{{selectCategoryName==''}}"><text class="cuIcon-right text-theme-color"></text></block><block wx:else><view class="title checkbox-title no-margin-right">{{''+selectCategoryName+''}}</view></block></view><view class="cu-form-group flex justify-between margin-left-sm margin-right-sm no-padding" style="width:100%;"><view class="title checkbox-title">价格</view><input class="margin-left text-sm no-padding title checkbox-title" style="text-align:right;" type="digit" data-event-opts="{{[['input',[['__set_model',['','price','$event',[]]]]]]}}" value="{{price}}" bindinput="__e"/></view><view class="cu-form-group flex justify-between margin-left-sm margin-right-sm no-padding" style="width:100%;"><view class="title checkbox-title">显示位置</view><checkbox data-event-opts="{{[['tap',[['CheckboxOnclick',['location']]]]]}}" class="round theme" bindtap="__e"></checkbox></view><view class="cu-form-group flex justify-between margin-left-sm margin-right-sm no-padding" style="width:100%;"><view class="title checkbox-title">是否匿名</view><checkbox data-event-opts="{{[['tap',[['CheckboxOnclick',['anonymity']]]]]}}" class="round theme" bindtap="__e"></checkbox></view></view><view class="cu-btn bg-gradual-tab lg block shadow radius margin-xl" data-target="viewModal" data-event-opts="{{[['tap',[['Submit',['$event']]]]]}}" bindtap="__e">发布物品</view><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="{{['cu-modal',selectCategory?'show':'']}}" bindtap="__e"><view data-event-opts="{{[['tap',[['',['$event']]]]]}}" class="cu-dialog" catchtap="__e"><radio-group data-event-opts="{{[['change',[['ChangeCategory',['$event']]]]]}}" class="block" bindchange="__e"><view class="cu-list menu text-left"><block wx:for="{{categoryList}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="cu-item"><label class="flex justify-between align-center flex-sub"><view class="title checkbox-title">{{item.category_name}}</view><radio class="{{['round theme',radio=='radio'+index?'checked':'']}}" checked="{{radio=='radio'+index?true:false}}" value="{{item.category_id}}"></radio></label></view></block></view></radio-group></view></view></scroll-view></view>