<template>
  <div class="address-format">
    <div class="edit-fields">
          <div class="edit-field"><label># {{ number + 1 }}</label></div>
          <div class="edit-field"><label>From: <input type="text" :name="fieldName('from')" :value="line.from"></label></div>
          <div class="edit-field"><label>To: <input type="text" :name="fieldName('to')" :value="line.to"></label></div>
          <div class="edit-field"><label>Format: <input type="text" :name="fieldName('format')" :value="line.format" style="width: 500px"></label><div class="sample_output" style="display: none;"><code>Example Output: House 1 Smart Town, 43000, Kajang, Selangor, Malaysia</code></div></div>
          <div class="edit-field"><a href="#" class="series-show-example"><span class="voyager-angle-down"></span></a></div>
          <div class="edit-field"><a href="#" data-toggle="modal" data-target="#address_format_modal"><span class="voyager-info-circled"></span></a></div>
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
    line: {
      type: Object,
      default: {}
    },
    count: {
      type: Number,
      default: 0
    },
    number: {
      type: Number,
      default: 0
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
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][series][" + name + "][]";
    }
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
  }
};
</script>
