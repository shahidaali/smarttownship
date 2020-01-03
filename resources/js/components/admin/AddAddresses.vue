<template>
  <form class="form-edit-add" role="form" :action="savePath" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="_token" :value="csrfToken">

    <div class="row">
        <div class="col-md-12">
            <div class="addresses-add" >
              <add-address-type v-for="(addressType, key) in addressTypes" v-bind:key="key" 
                  :community="community"
                  :is-preview="is_preview"
                  :preview-addresses="getAddresses(addressType.id)"
                  :address-type="addressType"
                  :load-address-type-path="loadAddressTypePath"
              ></add-address-type>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-primary pull-right" @click="loadAddressSave" style="margin-left: 10px;">
        <i class="icon wb-plus-circle"></i> Save Addresses
    </button>

    <input type="hidden" name="community_id" :value="community.id">
</form>
</template>

<script>
export default {
  props: {
    loadAddressSavePath: {
      type: String,
      default: ""
    },
    loadAddressTypePath: {
      type: String,
      default: ""
    },
    loadAddressPreviewPath: {
      type: String,
      default: ""
    },
    csrfToken: {
      type: String,
      default: ""
    },
    community: {
      type: Object,
      default: {}
    },
    addressTypes: {
      type: Array,
      default: []
    }
  },
  data() {
    return {
      is_loading: true,
      is_preview: false,
      addresses: [],
      submit_button: "Update Addresses",
    }
  },
  computed: {

  },
  methods: {
    loadAddressPreview: function() {
        var vm = this;
        vm.is_loading = true;
        var formData = $(".form-edit-add").serializeArray();
        $.post(vm.loadAddressPreviewPath + "/" + vm.community.id, formData, function(data) {
            if( data ) {
                vm.addresses = data.addresses;
                vm.is_preview = true;
            }
            vm.is_loading = false;
        });

    },
    loadAddressSave: function() {
        var vm = this;
        vm.is_loading = true;
        var formData = $(".form-edit-add").serializeArray();
        $.post(vm.loadAddressSavePath + "/" + vm.community.id, formData, function(data) {
            if( data ) {
                helpers.displayAlerts([data.message], toastr);
                if(data.status) {
                    setTimeout(function(){
                        window.location = data.redirect;
                    }, 500);
                }
            }
            vm.is_loading = false;
        });

    },
    loadBack: function() {
        var vm = this;
        vm.is_preview = false;
    },
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][" + name + "]";
    },
    isChecked: function(addressType) {
      return (statuses[addressType.id] !== undefined && statuses[addressType.id] == "active") ? 1 : 0;
    },
    isHidden: function() {
      return 0;
    },
    getAddresses: function(id) {
      return this.addresses[id] !== undefined ? this.addresses[id] : [];
    }
  },
  mounted() {
    var vm = this;

    this.$eventHub.$on('updatePreview', function() {
      vm.loadAddressPreview();
    });
  },
  created() {
    var vm = this;
  }
};
</script>
