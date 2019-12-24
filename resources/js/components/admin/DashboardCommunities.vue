<template>
  <div class="dashboard-communities">
    <div class="row">
        <div class="col-md-9">
            <dashboard-community-item v-for="community in communities" v-bind:key="community.id"
            :community="community"
            >
          </dashboard-community-item>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    communitiesPath: {
      type: String,
      default: ""
    },
  },
  data() {
    return {
      is_loading: true,
      communities: {},
    }
  },
  computed: {
   
  },
  methods: {
    loadCommunities: function() {
        var vm = this;
        vm.is_loading = true;
        $.get( vm.communitiesPath, {}, function(data) {
            vm.is_loading = false;

            if(data.type  == 'success') {
                vm.communities = data.communities;
            }
            else {
                
            } 
            helpers.displayAlerts([data], toastr);
        });
    },
  },
  mounted() {
    var vm = this;

    vm.loadCommunities();
  },
  created() {
    var vm = this;
  }
};
</script>
