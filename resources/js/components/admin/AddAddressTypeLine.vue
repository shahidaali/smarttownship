<template>
  <div class="address-format">
    <div class="edit-fields">
          <div class="edit-field"><label># {{ number + 1 }}</label></div>
          <div class="edit-field"><label>From: <input type="text" :name="fieldName('from')" v-model="from"></label></div>
          <div class="edit-field"><label>To: <input type="text" :name="fieldName('to')" v-model="to"></label></div>
          <div class="edit-field"><label>Format: <input type="text" :name="fieldName('format')" style="width: 500px" v-model="format"></label><div class="sample_output" v-html="sampleOutput()" style="display: none;"></div></div>
          <div class="edit-field"><a href="javascript:void(0)" class="series-show-example" @click="showSample"><span class="voyager-angle-down"></span></a></div>
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
        $('.sample_output').slideToggle();
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
