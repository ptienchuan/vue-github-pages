<template>
  <div class="box" v-bind:class="{ completed: todo.completed }">
    <span>{{ todo.title }}</span>
  </div>
</template>

<script lang="ts">
import { PropType } from 'vue';
import { Todo } from '@/services/todo';

export default {
  props: {
    todo: {} as PropType<Todo>,
  },
};
</script>

<style lang="scss" scoped>
.box {
  box-sizing: border-box;
  width: 50%;
  padding: 15px;
  margin: 15px auto;
  background-color: #e2e3e5;
  border-color: #d3d6d8;
}
.completed {
  color: #055160;
  background-color: #cff4fc;
  border-color: #b6effb;
}
</style>
