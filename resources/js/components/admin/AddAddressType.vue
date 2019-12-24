<template>
  <div class="listing-simple clearfix">
      <div class="listing-detail">
          <h5><label><input type="checkbox" name="lines[1][enabled]" value="1" v-model="is_checked" class="enable-address">  {{ addressType.title }}</label> <span class="count">({{ count }})</span></h5>
          <div class="field-panel" v-if="is_checked">
              <div class="edit-fields">
                  <div class="edit-field"><label>Add New Addresses: <input type="text" :name="fieldName('total')" class="address-total" v-model="total_address"></label></div>
              </div>
              <div class="panel series-panel" v-if="total_address > 0">
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
                        >
                      </add-address-type-line>
                      
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
    statuse: {
      type: Object,
      default: {}
    },
    count: {
      type: Number,
      default: 0
    },
    checked: {
      type: Boolean,
      default: false
    },
  },
  data() {
    return {
      is_loading: true,
      is_checked: this.checked,
      total_address: 0,
      series: [],
    }
  },
  computed: {

  },
  methods: {
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][" + name + "]";
    },
  },
  mounted() {
    var vm = this;

    vm.series.push({
        from : parseInt(vm.count) + 1,
        to : 0,
        format : vm.community.address_format,
    });
  },
  created() {
    var vm = this;
  }
};
</script>
