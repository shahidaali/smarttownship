<template>
  <div class="listing-simple clearfix">
      <div class="listing-detail">
          <h5><label><input type="checkbox" name="lines[1][enabled]" value="1" v-model="is_checked" class="enable-address">  {{ addressType.title }}</label> <span class="count">({{ count }})</span></h5>
          <div class="field-panel" v-if="is_checked">
              <div class="edit-fields">
                  <div class="edit-field"><label>Total Series: <input type="text" :name="fieldName('total_series')" v-model="total_series" v-on:keyup="seriesChanged" autocomplete="off" maxlength="1"></label></div>
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
    tokens: {
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
      total_address: 10,
      total_series: 1,
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
    totalChanged: function() {
      this.$eventHub.$emit('totalChanged', this.total_address);
    },
    seriesChanged: function() {
      this.createSeries();
      this.$eventHub.$emit('seriesChanged', this.total_series);
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

    vm.seriesChanged();
  },
  created() {
    var vm = this;
  }
};
</script>
