<template>
  <div class="address-preview-listing clearfix">
      <div class="address-preview-series" v-for="(series, series_key) in addressLines" >
          <div class="series-heading">
              <code>Series# {{ series_key + 1 }}</code> <code>Total: {{ series.length }}</code>
          </div>
          <div class="series-body address-format">
              <preview-address-line v-for="(line, key) in series" v-bind:key="key"
                :line="line"
                :number="key"
                :address-type="addressType"
                >
              </preview-address-line>
              
          </div>
      </div>
  </div>
</template>

<script>
export default {
  props: {
    addressType: {
      type: Object,
      default: {}
    },
    addressLines: {
      type: Array,
      default: {}
    }
  },
  data() {
    return {
      is_loading: true,
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
  },
  created() {
    var vm = this;
  }
};
</script>
