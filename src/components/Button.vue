<template>
  <button v-bind:class="['button', style]">
    <slot></slot>
  </button>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  props: {
    style: String,
  },
});
</script>

<style lang="scss" scoped>
.button {
  box-sizing: border-box;
  padding: 10px 20px;
  font-size: 16px;
  border: 1px solid #13653f;
  border-radius: 3px;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #146c43;
}
</style>
