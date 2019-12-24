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

const app = new Vue({
    el: '#app'
});