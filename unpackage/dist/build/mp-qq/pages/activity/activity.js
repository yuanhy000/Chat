(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/activity/activity","components/waterfall-flow/waterfall-flow"],{"05dd":function(t,i,e){"use strict";e.r(i);var n=e("f617"),a=e("bcae");for(var c in a)"default"!==c&&function(t){e.d(i,t,function(){return a[t]})}(c);e("7c30");var o=e("2877"),s=Object(o["a"])(a["default"],n["a"],n["b"],!1,null,null,null);i["default"]=s.exports},"4c81":function(t,i,e){"use strict";(function(t){e("499b"),e("921b");n(e("66fd"));var i=n(e("05dd"));function n(t){return t&&t.__esModule?t:{default:t}}t(i.default)}).call(this,e("a821")["createPage"])},"74b4":function(t,i,e){},bcae:function(t,i,e){"use strict";e.r(i);var n=e("d75d"),a=e.n(n);for(var c in n)"default"!==c&&function(t){e.d(i,t,function(){return n[t]})}(c);i["default"]=a.a},c2d9:function(t,i,e){"use strict";(function(t){Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0;var e={props:{list:{type:Array,default:function(){return[]}},loading:{type:Boolean,default:!1},init:{type:Boolean,default:!1},align:{type:Boolean,default:!1}},data:function(){return{mark:0,newList:[],boxHeight:[],top:[],left:[],loadingTop:0,display:!1}},watch:{list:function(t,i){this.mark=i.length,t!=i&&(this.newList=this.list,this.$nextTick(function(){var t=this;setTimeout(function(){t.display=!0},280),setTimeout(function(){t.waterFall()},300)}))},init:function(t,i){var e=this;this.mark=0,this.newList=[],this.boxHeight=[],this.top=[],this.left=[],this.loadingTop=0,this.display=!1,setTimeout(function(){e.display=!0},270)}},methods:{waterFall:function(){var i=this,e=t.createSelectorQuery().in(this);e.selectAll(".commodityItem").boundingClientRect(function(t){for(var e=i.newList.length,n=0,a=i.mark;a<e;a++)if(n=t[a].height,a<2)i.$set(i.newList[a],"top",0),i.$set(i.newList[a],"left",a),i.boxHeight.push(n),i.top.push(0),i.left.push(a);else{var c=i.boxHeight[0],o=0;c>i.boxHeight[1]&&(c=i.boxHeight[1],o=1),i.boxHeight[o]=c+n+5,i.top.push(c+5),i.left.push(o),i.$set(i.newList[a],"top",c+5),i.$set(i.newList[a],"left",o),i.loadingTop=i.boxHeight[o]}}).exec()},choose:function(t){this.$emit("click",t)},navigateUserShow:function(i){t.navigateTo({url:"/pages/user-show/user-show?user_id="+i})}}};i.default=e}).call(this,e("a821")["default"])},d75d:function(t,i,e){"use strict";(function(t){Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0;var n=o(e("66fd")),a=e("2f62"),c=o(e("60c5"));o(e("feaa"));function o(t){return t&&t.__esModule?t:{default:t}}function s(t){for(var i=1;i<arguments.length;i++){var e=null!=arguments[i]?arguments[i]:{},n=Object.keys(e);"function"===typeof Object.getOwnPropertySymbols&&(n=n.concat(Object.getOwnPropertySymbols(e).filter(function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.forEach(function(i){r(t,i,e[i])})}return t}function r(t,i,e){return i in t?Object.defineProperty(t,i,{value:e,enumerable:!0,configurable:!0,writable:!0}):t[i]=e,t}new c.default({key:"QL7BZ-ZCJKK-72IJS-A6NA6-HRJ3F-ZYB6J"});var f={data:function(){return{display:!1,activity_id:0,scroll_height:700,activityInfo:[],imageList:[],isInput:!1,inputComment:"",comment_page:1,scroll_top:0,showToast:!1,toastContent:"",fixedHeight:0,loading:!1}},computed:s({hasComment:function(){return 0!=this.activityInfo.length&&0!=this.activityInfo.activity_comments.length}},(0,a.mapState)({user:function(t){return t.AuthUser}})),onShareAppMessage:function(t){return{title:"快来围观这个活动～～",path:"/pages/activity/activity?activity_id="+this.activity_id,imageUrl:"/static/user/shareImage.jpg"}},onLoad:function(i){var e=this;this.activity_id=i.activity_id;this.loading=!0,n.default.prototype.$http.request({url:"/activities/detail",method:"POST",params:{activity_id:this.activity_id}}).then(function(n){for(var a in e.activityInfo=n.data.data,e.activityInfo.activity_images)e.imageList.push(e.activityInfo.activity_images[a].image_url);for(var c in e.formatTime(),e.formatActivityContent(),e.activityInfo.activity_comments)e.formatCommentsTime(c);setTimeout(function(){if(e.getHeight(),1==i.comment){var n=t.createSelectorQuery().in(e);n.select("#comment").boundingClientRect(function(t){e.scroll_top=t.top}).exec()}e.loading=!1},200)})},mounted:function(){var t=this;setTimeout(function(){t.display=!0},100)},methods:{navigateUserShow:function(i){t.navigateTo({url:"/pages/user-show/user-show?user_id="+i})},changeFixedHeight:function(t){this.fixedHeight=t.detail.height},hideModal:function(t){this.showToast=!1},formatActivityContent:function(){this.activityInfo.activity_content=this.activityInfo.activity_content.replace(/<br\/\>/g,"\n"),this.activityInfo.activity_attention&&(this.activityInfo.activity_attention=this.activityInfo.activity_attention.replace(/<br\/\>/g,"\n"))},navigateActivityRegister:function(){t.navigateTo({url:"/pages/activity-register/activity-register?activity_id="+this.activity_id})},tooglrUserFollow:function(){var t=this;n.default.prototype.$http.request({url:"/users/follow",method:"POST",params:{accept_id:this.activityInfo.activity_user.user_id}}).then(function(i){t.activityInfo.user_follow=!t.activityInfo.user_follow,t.$refs.notification.open({type:"success",content:"操作成功",timeout:1500,isClick:!1})})},displayMoreComments:function(){this.comment_page++},likeComment:function(t,i){var e=this;n.default.prototype.$http.request({url:"/likes/comment",method:"POST",params:{comment_id:i}}).then(function(i){e.activityInfo.activity_comments[t].comment_like=!e.activityInfo.activity_comments[t].comment_like,e.activityInfo.activity_comments[t].comment_like?e.activityInfo.activity_comments[t].comment_likes++:e.activityInfo.activity_comments[t].comment_likes--,e.$refs.notification.open({type:"success",content:"操作成功",timeout:1500,isClick:!1})})},submitComment:function(){var t=this;""==this.inputComment&&this.$refs.notification.open({type:"warn",content:"留言不能为空～",timeout:1500,isClick:!1}),n.default.prototype.$http.request({url:"/comments/activity/create",method:"POST",params:{activity_id:this.activity_id,comment_content:this.inputComment,parent_id:0}}).then(function(i){t.activityInfo.activity_comments.unshift(i.data.data),t.formatCommentsTime(0),t.inputComment="",t.$refs.notification.open({type:"success",content:"操作成功",timeout:1500,isClick:!1})}),this.cancelInput()},beginInput:function(){if(""==this.user.authentication||null==this.user.authentication)return this.toastContent="先去认证身份，再进行留言操作～～",void(this.showToast=!0);this.isInput=!0},cancelInput:function(){this.isInput=!1,this.fixedHeight=0},likeArticle:function(t,i){var e=this;n.default.prototype.$http.request({url:"/likes/activity",method:"POST",params:{activity_id:this.activity_id}}).then(function(t){e.activityInfo.activity_like=!e.activityInfo.activity_like,e.activityInfo.activity_like?e.activityInfo.activity_likes++:e.activityInfo.activity_likes--,e.$refs.notification.open({type:"success",content:"操作成功",timeout:1500,isClick:!1})})},CollectArticle:function(t,i){var e=this;n.default.prototype.$http.request({url:"/collections/activity",method:"POST",params:{activity_id:this.activity_id}}).then(function(t){e.activityInfo.activity_collect=!e.activityInfo.activity_collect,e.$refs.notification.open({type:"success",content:"操作成功",timeout:1500,isClick:!1})})},viewImage:function(i){t.previewImage({urls:this.imageList,current:i.currentTarget.dataset.url})},getHeight:function(){var i=this;t.getSystemInfo({success:function(e){i.screen_height=e.windowHeight,i.screen_width=e.windowWidth;var n=t.createSelectorQuery().in(i);n.select("#scroll").boundingClientRect(function(t){i.scroll_height=i.screen_height-t.top-50}).exec()}})},formatTime:function(){var t=this.activityInfo.activity_created.split(" "),i=(new Date).toLocaleDateString(),e=Math.abs(Math.ceil((new Date(i)-new Date(t[0]))/864e5)),n=7-e;if(0===e)this.activityInfo.display_time="今天 "+t[1];else if(1===e)this.activityInfo.display_time="昨天 "+t[1];else if(2===e)this.activityInfo.display_time="前天 "+t[1];else if(n>0){var a=new Date(this.activityInfo.activity_created).getDay();switch(a){case 0:this.activityInfo.display_time="星期天 "+t[1];break;case 1:this.activityInfo.display_time="星期一 "+t[1];break;case 2:this.activityInfo.display_time="星期二 "+t[1];break;case 3:this.activityInfo.display_time="星期三 "+t[1];break;case 4:this.activityInfo.display_time="星期四 "+t[1];break;case 5:this.activityInfo.display_time="星期五 "+t[1];break;case 6:this.activityInfo.display_time="星期六 "+t[1];break}}else this.activityInfo.display_time=this.activityInfo.activity_created},formatCommentsTime:function(t){var i=this.activityInfo.activity_comments[t].comment_created.split(" "),e=(new Date).toLocaleDateString(),n=Math.abs(Math.ceil((new Date(e)-new Date(i[0]))/864e5)),a=7-n;if(0===n)this.activityInfo.activity_comments[t].display_time="今天 "+i[1];else if(1===n)this.activityInfo.activity_comments[t].display_time="昨天 "+i[1];else if(2===n)this.activityInfo.activity_comments[t].display_time="前天 "+i[1];else if(a>0){var c=new Date(this.activityInfo.activity_comments[t].comment_created).getDay();switch(c){case 0:this.activityInfo.activity_comments[t].display_time="星期天 "+i[1];break;case 1:this.activityInfo.activity_comments[t].display_time="星期一 "+i[1];break;case 2:this.activityInfo.activity_comments[t].display_time="星期二 "+i[1];break;case 3:this.activityInfo.activity_comments[t].display_time="星期三 "+i[1];break;case 4:this.activityInfo.activity_comments[t].display_time="星期四 "+i[1];break;case 5:this.activityInfo.activity_comments[t].display_time="星期五 "+i[1];break;case 6:this.activityInfo.activity_comments[t].display_time="星期六 "+i[1];break}}else this.activityInfo.activity_comments[t].display_time=this.activityInfo.activity_comments[t].comment_created}}};i.default=f}).call(this,e("a821")["default"])},da7f:function(t,i,e){"use strict";var n=e("74b4"),a=e.n(n);a.a},f617:function(t,i,e){"use strict";var n=function(){var t=this,i=t.$createElement;t._self._c},a=[];e.d(i,"a",function(){return n}),e.d(i,"b",function(){return a})},f781:function(t,i,e){"use strict";var n=function(){var t=this,i=t.$createElement;t._self._c},a=[];e.d(i,"a",function(){return n}),e.d(i,"b",function(){return a})},fb91:function(t,i,e){"use strict";e.r(i);var n=e("c2d9"),a=e.n(n);for(var c in n)"default"!==c&&function(t){e.d(i,t,function(){return n[t]})}(c);i["default"]=a.a},feaa:function(t,i,e){"use strict";e.r(i);var n=e("f781"),a=e("fb91");for(var c in a)"default"!==c&&function(t){e.d(i,t,function(){return a[t]})}(c);e("da7f");var o=e("2877"),s=Object(o["a"])(a["default"],n["a"],n["b"],!1,null,"21f54146",null);i["default"]=s.exports}},[["4c81","common/runtime","common/vendor"]]]);