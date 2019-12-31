window.EventBus = new Vue();
const shared = globalConfig;

shared.install = function(){
  Object.defineProperty(Vue.prototype, '$globalConfig', {
    get () { return shared }
  })
}
Vue.use(shared);

Vue.component('dashboard-communities', require('./components/admin/DashboardCommunities.vue').default);
Vue.component('dashboard-community-item', require('./components/admin/DashboardCommunityItem.vue').default);
Vue.component('add-address-type', require('./components/admin/AddAddressType.vue').default);
Vue.component('add-address-type-line', require('./components/admin/AddAddressTypeLine.vue').default);

Vue.prototype.$eventHub = new Vue(); // Global event bus

const app = new Vue({
    el: '#app'
});

const app_inline = new Vue({
    el: '#app_inline'
});

// jQuery(document).change(".cascading-select-child", function(){
// 	alert();
// });

$('select.cascading-select2-ajax').each(function() {
    $(this).select2({
        width: '100%',
        ajax: {
            url: $(this).data('get-items-route'),
            data: function (params) {
                var query = {
                    search: params.term,
                    type: $(this).data('get-items-field'),
                    method: $(this).data('method'),
                    page: params.page || 1
                }

             	var $el = $(this);
			    var parent = $el.data('parent');

			    if(parent && $('#'+parent).length > 0) {
			    	var parent_id = $('#'+parent).val();
			    	if( parent_id ) {
			    		query['selected_parent_id'] = parent_id;
			    	}
			    }
               return query;
            }
        }
    });

    $(this).on('select2:select',function(e){
        var data = e.params.data;
        if (data.id == '') {
            // "None" was selected. Clear all selected options
            $(this).val([]).trigger('change');
        } else {
            $(e.currentTarget).find("option[value='" + data.id + "']").attr('selected','selected');
        }
    });

    $(this).on('select2:unselect',function(e){
        var data = e.params.data;
        $(e.currentTarget).find("option[value='" + data.id + "']").attr('selected',false);
    });
});
// $('.cascading-select-child').on('select2:open', function(e) {
//     var $el = $(this);
//     var route = $el.data('get-items-route');
//     var parent = $el.data('parent');

//     if(parent && $('#'+parent).length > 0) {
//     	var parent_id = $('#'+parent).val();
//     	if( parent_id ) {
//     		route += "&selected_parent_id=" +  parent_id;
//     		$el.attr('data-get-items-route', route);
//     	}
//     }

//     return false;
// })