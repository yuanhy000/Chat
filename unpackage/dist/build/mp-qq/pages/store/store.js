(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/store/store"],{1475:function(t,e,o){"use strict";var i=function(){var t=this,e=t.$createElement;t._self._c},n=[];o.d(e,"a",function(){return i}),o.d(e,"b",function(){return n})},"3c8a":function(t,e,o){"use strict";o.r(e);var i=o("1475"),n=o("7cc2");for(var a in n)"default"!==a&&function(t){o.d(e,t,function(){return n[t]})}(a);o("7efc");var r=o("2877"),c=Object(r["a"])(n["default"],i["a"],i["b"],!1,null,null,null);e["default"]=c.exports},4709:function(t,e,o){"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(o("66fd")),n=o("2f62");function a(t){return t&&t.__esModule?t:{default:t}}function r(t){for(var e=1;e<arguments.length;e++){var o=null!=arguments[e]?arguments[e]:{},i=Object.keys(o);"function"===typeof Object.getOwnPropertySymbols&&(i=i.concat(Object.getOwnPropertySymbols(o).filter(function(t){return Object.getOwnPropertyDescriptor(o,t).enumerable}))),i.forEach(function(e){c(t,e,o[e])})}return t}function c(t,e,o){return e in t?Object.defineProperty(t,e,{value:o,enumerable:!0,configurable:!0,writable:!0}):t[e]=o,t}var s=function(){return o.e("components/waterfall-flow/waterfall-flow").then(o.bind(null,"feaa"))},u={components:{WaterfallFlow:s},data:function(){return{displayCategory:!1,categoryList:[],currentCategory:{},currentCategoryId:-1,categoryName:"",commodityList:[],scroll_height:700,loading:!1,links:{},loadFinish:!1,initList:!1,noResult:!1}},computed:r({},(0,n.mapState)({map_poi:function(t){return t.MapPoi}})),watch:{"$store.state.MapPoi.search_commodity":function(){var t=this;""!=this.map_poi.search_commodity&&(this.prepareForRequest(),i.default.prototype.$http.request({url:"/commodities/search",method:"POST",params:{search_keyword:this.map_poi.search_commodity}}).then(function(e){t.commodityList=e.data.data,t.links=e.data.links,setTimeout(function(){t.loading=!1},200)}).catch(function(e){t.noResult=!0,t.loading=!1}))}},mounted:function(){var t=this;this.loading=!0,this.getCategory(),this.loadCategoryCommodity(!0),setTimeout(function(){t.getHeight()},100)},methods:{navigateCommodity:function(e){t.navigateTo({url:"/pages/commodity/commodity?commodity_id="+e})},navigateSearch:function(){t.navigateTo({url:"/pages/search-commodity/search-commodity"})},getCategory:function(){var t=this;i.default.prototype.$http.get("/categories/get").then(function(e){t.categoryList=e.data.data.categories})},prepareForRequest:function(){this.commodityList=[],this.loadFinish=!1,this.initList=!this.initList,this.noResult=!1,this.loading=!0,this.$store.dispatch("clearSearchCommodity")},loadCategoryCommodity:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]&&arguments[0];e||this.prepareForRequest(),-1==this.currentCategoryId?i.default.prototype.$http.request({url:"/commodities/recommend",method:"POST"}).then(function(e){t.commodityList=e.data.data,t.links=e.data.links,setTimeout(function(){t.loading=!1},200)}).catch(function(e){t.noResult=!0,t.loading=!1}):i.default.prototype.$http.request({url:"/commodities/category",method:"POST",params:{category_id:this.currentCategoryId}}).then(function(e){t.commodityList=e.data.data,t.links=e.data.links,setTimeout(function(){t.loading=!1},200)}).catch(function(e){t.noResult=!0,t.loading=!1})},loadNextPage:function(t){var e=this;if(this.loading=!0,!this.links.next)return this.loadFinish=!0,void(this.loading=!1);i.default.prototype.$http.post(this.links.next).then(function(t){e.commodityList.push.apply(e.commodityList,t.data.data),e.links=t.data.links,setTimeout(function(){e.loading=!1},200)})},getHeight:function(){var e=this;t.getSystemInfo({success:function(o){e.screen_height=o.windowHeight;var i=t.createSelectorQuery().in(e);i.select("#commodities").boundingClientRect(function(t){e.scroll_height=e.screen_height-t.top-55}).exec()}})},ChangeCategory:function(t){if(-1==t){if(t==this.currentCategoryId)return void this.hideModal();this.currentCategoryId=-1,this.categoryName="全部推荐",this.loadCategoryCommodity(),this.hideModal()}else{if(this.categoryList[t].category_id==this.currentCategoryId)return void this.hideModal();this.currentCategoryId=this.categoryList[t].category_id,this.categoryName=this.categoryList[t].category_name,this.loadCategoryCommodity(),this.hideModal()}},showModal:function(t){this.displayCategory=!0},hideModal:function(t){this.displayCategory=!1},tabSelect:function(t){this.TabCur=t.currentTarget.dataset.id,this.scrollLeft=60*(t.currentTarget.dataset.id-1)}}};e.default=u}).call(this,o("a821")["default"])},"7cc2":function(t,e,o){"use strict";o.r(e);var i=o("4709"),n=o.n(i);for(var a in i)"default"!==a&&function(t){o.d(e,t,function(){return i[t]})}(a);e["default"]=n.a},"7e86":function(t,e,o){"use strict";(function(t){o("499b"),o("921b");i(o("66fd"));var e=i(o("3c8a"));function i(t){return t&&t.__esModule?t:{default:t}}t(e.default)}).call(this,o("a821")["createPage"])}},[["7e86","common/runtime","common/vendor"]]]);