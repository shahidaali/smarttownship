<template>
  <div class="edit-fields">
          <div class="edit-field"><code>#{{ number + 1 }}</code> <code>{{ line.address }}</code></div>
    </div>
</template>

<script>
export default {
  props: {
    addressType: {
      type: Object,
      default: {}
    },
    line: {
      type: Object,
      default: {}
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
    totalChanged: function(total_address) {
      this.to = parseInt(this.line.from) + parseInt(total_address) - 1;
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
