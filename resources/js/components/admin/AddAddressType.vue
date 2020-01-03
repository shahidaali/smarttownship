<template>
  <div class="listing-simple clearfix" v-if="!is_loading">
      <div class="listing-detail">
          <input type="hidden" :name="fieldName('id')" :value="addressType.id">
          <h5><label><input type="checkbox" :name="fieldName('enabled')" value="1" v-model="is_checked" class="enable-address">  {{ addressType.title }}</label> <span class="count">({{ count }})</span></h5>
          <div class="field-panel" v-if="is_checked">
              <div class="edit-fields">
                  <div class="edit-field"><label>Series: <input type="text" :name="fieldName('total_series')" v-model="total_series" v-on:keyup="seriesChanged" autocomplete="off" maxlength="1"></label></div>
              </div>
              <div class="panel series-panel" v-if="total_series > 0">
                  <div class="panel-heading">
                      Address Series
                  </div>
                  <div class="panel-body">
                      <add-address-type-line v-for="(line, key) in series" v-bind:key="key"
                        :line="line"
                        :number="key"
                        :community="community"
                        :address-type="addressType"
                        :count="count"
                        :tokens="tokens"
                        >
                      </add-address-type-line>
                      
                  </div>
                  <div class="panel-footer clearfix">
                      <button type="button" class="btn btn-sm btn-warning pull-right view" @click="updatePreview" style="margin: 0px; padding: 1px 7px;">
                          <i class="icon wb-plus-circle"></i> Preview
                      </button>
                  </div>
              </div>
              <div class="panel series-panel" v-if="isPreview">
                  <div class="panel-heading">
                      Address Preview
                  </div>
                  <div class="panel-body">
                      <div class="address-preview">
                        <preview-addresses
                          :address-type="addressType"
                          :address-lines="previewAddresses"
                          >
                        </preview-addresses>
                      </div>
                  </div>
              </div>
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
    addressType: {
      type: Object,
      default: {}
    },
    previewAddresses: {
      type: Array,
      default: []
    },
    loadAddressTypePath: {
      type: String,
      default: ""
    },
    isPreview: {
      type: Boolean,
      default: 0
    },
  },
  data() {
    return {
      is_loading: true,
      is_checked: 0,
      count: 0,
      tokens: {},
      total_address: 10,
      total_series: 1,
      series: [],
    }
  },
  computed: {

  },
  methods: {
    loadAddressType: function() {
        var vm = this;
        vm.is_loading = true;
        $.get(vm.loadAddressTypePath + "/" + vm.community.id + "/" + vm.addressType.id, {}, function(data) {
            if( data ) {
                vm.is_checked = data.is_checked;
                vm.count = data.count;
                vm.tokens = data.tokens;
                vm.seriesChanged();
            }
            vm.is_loading = false;
        });

    },
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][" + name + "]";
    },
    totalChanged: function() {
      this.$eventHub.$emit('totalChanged', this.total_address);
    },
    seriesChanged: function() {
      this.createSeries();
      this.$eventHub.$emit('seriesChanged', this.total_series);
    },
    updatePreview: function() {
      this.$eventHub.$emit('updatePreview');
    },
    createSeries: function() {
      var vm = this;

      const series_arr = [];
      for (var i = 0; i < this.total_series; i++) {
        var from = i == 0 ? parseInt(vm.count) + 1 : 0;
        var to = i == 0 ? from + this.total_address -1 : 0;
        series_arr.push({
            from : from,
            to : to,
            format : vm.community.address_format,
        });
      }

      vm.series = series_arr;
    },
  },
  mounted() {
    var vm = this;
    vm.loadAddressType();
  },
  created() {
    var vm = this;
  }
};
</script>
