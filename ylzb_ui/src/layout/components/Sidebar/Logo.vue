<template>
  <div class="sidebar-logo-container" :class="{ 'collapse': collapse }" :style="{ backgroundColor: sideTheme === 'theme-dark' ? variables.menuBackground : variables.menuLightBackground }">
    <transition name="sidebarLogoFade">
      <router-link v-if="collapse" key="collapse" class="sidebar-logo-link" to="/">
        <h1 class="sidebar-title">{{ title }}</h1>
      </router-link>
      <router-link v-else key="expand" class="sidebar-logo-link" to="/">
        <h1 class="sidebar-title">{{ title }}</h1>
      </router-link>
    </transition>
  </div>
</template>

<script setup>
import variables from '@/assets/styles/variables.module.scss'
import useSettingsStore from '@/store/modules/settings'

defineProps({
  collapse: {
    type: Boolean,
    required: true
  }
})

const title = import.meta.env.VITE_APP_TITLE;
const settingsStore = useSettingsStore();
const sideTheme = computed(() => settingsStore.sideTheme);
</script>

<style lang="scss" scoped>
.sidebarLogoFade-enter-active {
  transition: opacity 1.5s;
}

.sidebarLogoFade-enter,
.sidebarLogoFade-leave-to {
  opacity: 0;
}

.sidebar-logo-container {
  position: relative;
  width: 100%;
  height: 50px;
  line-height: 50px;
  margin: 24px 0 36px;
  background: #2b2f3a;
  text-align: center;
  overflow: hidden;

  & .sidebar-logo-link {
    height: 100%;
    width: 100%;

    & .sidebar-title {
      display: inline-block;
      margin: 0;
      line-height: 50px;
      font-size: 21px;
      font-weight: 800;
      letter-spacing: 4px;
      font-family: "PingFang SC", "Microsoft YaHei", "Source Han Sans CN", sans-serif;
      vertical-align: middle;

      /* 渐变艺术字 */
      background: linear-gradient(120deg, #00a76f 0%, #00c389 45%, #22d3a5 100%);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      filter: drop-shadow(0 1px 1px rgba(0, 167, 111, 0.25));

      /* 标题前的小圆点装饰 */
      &::before {
        content: '';
        display: inline-block;
        width: 7px;
        height: 7px;
        border-radius: 50%;
        background: linear-gradient(135deg, #00c389, #22d3a5);
        box-shadow: 0 0 0 3px rgba(0, 195, 137, 0.15);
        margin-right: 9px;
        vertical-align: middle;
      }
    }
  }

  /* 折叠态：缩小字号、隐藏装饰，保证放得下 */
  &.collapse {
    .sidebar-title {
      font-size: 13px;
      letter-spacing: 0;

      &::before {
        display: none;
      }
    }
  }
}
</style>
