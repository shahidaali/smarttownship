<template>
  <div class="listing clearfix">
      <div class="listing-left">
          <img v-if="community.banner" :src="$globalConfig.voyagerAseetUrl + community.banner">
      </div>
      <div class="listing-right">
          <div class="listing-detail">
              <ul class="listing-links">
                  <li class="dropdown community">
                    <a href="#" class="dropdown-toggle text-right" data-toggle="dropdown" role="button" aria-expanded="false"><span class="voyager-dot-3"></span></a>
                    <ul class="dropdown-menu dropdown-menu-animated">
                        <li><a :href="$globalConfig.baseUrl + 'admin/communities/1/edit'"><span class="voyager-edit"></span> Edit</a></li>
                        <li><a :href="$globalConfig.baseUrl + 'admin/communities/1/addresses'"><span class="voyager-logbook"></span> Addresses</a></li>
                        <!-- <li><a href=""><span class="voyager-harddrive"></span> Assets</a></li> -->
                    </ul>
                  </li>
              </ul>
              <h2>{{ community.name }}</h2>
              <div class="description" v-html="community.description"></div>

              <ul class="listing-items">
                  <li><span class="item-icon voyager-shop"></span><span class="item-label">Houses : </span><span class="item-number">123</span></li>
                  <li><span class="item-icon voyager-shop"></span><span class="item-label">Buildings : </span><span class="item-number">123</span></li>
                  <li><span class="item-icon voyager-shop"></span><span class="item-label">Flats : </span><span class="item-number">123</span></li>
              </ul>
          </div>
      </div>
  </div>
</template>

<script>
export default {
  props: {
    community: {
      type: Object,
      default: {}
    },
  },
  data() {
    return {
      is_loading: true,
    }
  },
  computed: {

  },
  methods: {
  
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
  }
};
</script>
