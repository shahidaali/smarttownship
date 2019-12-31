<template>
  <div class="address-format">
    <div class="edit-fields">
          <div class="edit-field"><label># {{ number + 1 }}</label></div>
          <div class="edit-field"><label>From: <input type="text" :name="fieldName('from')" v-model="from" autocomplete="off"></label></div>
          <div class="edit-field"><label>To: <input type="text" :name="fieldName('to')" v-model="to" autocomplete="off"></label></div>
          <div class="edit-field"><label>ST#: <input type="text" :name="fieldName('street')" v-model="street" autocomplete="off"></label></div>
          <div class="edit-field"><label>BL#: <input type="text" :name="fieldName('block')" v-model="block" autocomplete="off"></label></div>
          <div class="edit-field"><label>Format: <input type="text" :name="fieldName('format')" style="width: 420px" v-model="format" autocomplete="off"></label></div>
          <div class="edit-field"><a href="javascript:void(0)" class="series-show-example" v-on:click="showSample"><span class="voyager-angle-down"></span></a></div>
          <div class="edit-field"><a href="#" data-toggle="modal" data-target="#address_format_modal"><span class="voyager-info-circled"></span></a></div>
          <div class="edit-field" v-if="show_sample"><div class="sample_output" v-html="sampleOutput()"></div></div>
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
    tokens: {
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
      show_sample: false,
      street: 0,
      block: 0,
      from: this.line.from,
      to: this.line.to,
      format: this.line.format,
    }
  },
  computed: {

  },
  methods: {
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][series][" + name + "][]";
    },
    sampleOutput : function( address ) {
        var vm = this;
        var address = vm.format;

        $.each(vm.tokens, function(i, token){
            address = address.replace(token.token, token.example);
        });
        return "<code>Example Output: " + address + "</code>";
    },
    showSample : function() {
        var vm = this;
        this.show_sample = !this.show_sample;
    },
    totalChanged: function(total_address) {
      this.to = parseInt(this.line.from) + parseInt(total_address) - 1;
    }
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
    this.$eventHub.$on('totalChanged', this.totalChanged);
  }
};
</script>
