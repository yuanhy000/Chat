(global.webpackJsonp=global.webpackJsonp||[]).push([["colorui/components/cu-custom"],{249:
/*!*******************************************************************!*\
  !*** /Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue ***!
  \*******************************************************************/
/*! no static exports found */function(t,n,e){"use strict";e.r(n);var r=e(/*! ./cu-custom.vue?vue&type=template&id=c5070762& */250),u=e(/*! ./cu-custom.vue?vue&type=script&lang=js& */252);for(var a in u)"default"!==a&&function(t){e.d(n,t,function(){return u[t]})}(a);var o=e(/*! ../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/vue-loader/lib/runtime/componentNormalizer.js */15),c=Object(o.default)(u.default,r.render,r.staticRenderFns,!1,null,null,null);c.options.__file="Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue",n.default=c.exports},250:
/*!**************************************************************************************************!*\
  !*** /Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue?vue&type=template&id=c5070762& ***!
  \**************************************************************************************************/
/*! exports provided: render, staticRenderFns */function(t,n,e){"use strict";e.r(n);var r=e(/*! -!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/vue-cli-plugin-hbuilderx/packages/webpack-uni-nvue-loader/lib/templateLoader.js??vue-loader-options!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--17-0!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/webpack-uni-mp-loader/lib/template.js!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/vue-loader/lib??vue-loader-options!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-custom-block-loader??ref--0-1!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!./cu-custom.vue?vue&type=template&id=c5070762& */251);e.d(n,"render",function(){return r.render}),e.d(n,"staticRenderFns",function(){return r.staticRenderFns})},251:
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/@dcloudio/vue-cli-plugin-hbuilderx/packages/webpack-uni-nvue-loader/lib/templateLoader.js??vue-loader-options!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--17-0!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/template.js!./node_modules/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-custom-block-loader??ref--0-1!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!/Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue?vue&type=template&id=c5070762& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */function(t,n,e){"use strict";e.r(n),e.d(n,"render",function(){return r}),e.d(n,"staticRenderFns",function(){return u});var r=function(){var t=this.$createElement;this._self._c},u=[];r._withStripped=!0},252:
/*!********************************************************************************************!*\
  !*** /Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************/
/*! no static exports found */function(t,n,e){"use strict";e.r(n);var r=e(/*! -!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/babel-loader/lib!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--12-1!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/webpack-uni-mp-loader/lib/script.js!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/vue-loader/lib??vue-loader-options!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-custom-block-loader??ref--0-1!../../../../../../Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!./cu-custom.vue?vue&type=script&lang=js& */253),u=e.n(r);for(var a in r)"default"!==a&&function(t){e.d(n,t,function(){return r[t]})}(a);n.default=u.a},253:
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--12-1!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/script.js!./node_modules/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-custom-block-loader??ref--0-1!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!/Users/yuanhy/Desktop/Chat/colorui/components/cu-custom.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */function(t,n,e){"use strict";(function(t){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var e={data:function(){return{StatusBar:this.StatusBar,CustomBar:this.CustomBar}},name:"cu-custom",computed:{style:function(){var t=this.StatusBar,n=this.CustomBar,e=this.bgImage,r="height:".concat(n,"px;padding-top:").concat(t,"px;");return this.bgImage&&(r="".concat(r,"background-image:url(").concat(e,");")),r}},props:{bgColor:{type:String,default:""},isBack:{type:[Boolean,String],default:!1},bgImage:{type:String,default:""}},methods:{BackPage:function(){t.navigateBack({delta:1})}}};n.default=e}).call(this,e(/*! ./node_modules/@dcloudio/uni-mp-qq/dist/index.js */1).default)}}]);
//# sourceMappingURL=../../../.sourcemap/mp-qq/colorui/components/cu-custom.js.map
;(global["webpackJsonp"] = global["webpackJsonp"] || []).push([
    'colorui/components/cu-custom-create-component',
    {
        'colorui/components/cu-custom-create-component':(function(module, exports, __webpack_require__){
            __webpack_require__('1')['createComponent'](__webpack_require__(249))
        })
    },
    [['colorui/components/cu-custom-create-component']]
]);                
