
#define BOARD_PID		"NEWIFI-Y1"
#define BOARD_NAME		"NEWIFI-Y1"
#define BOARD_DESC		"NEWIFI-MINI Wireless Router"
#define BOARD_VENDOR_NAME	"Newifi Inc."
#define BOARD_VENDOR_URL	"http://www.newifi.com/"
#define BOARD_MODEL_URL		"http://www.newifi.com/product_newifi_mini.shtml"
#define BOARD_BOOT_TIME		25
#define BOARD_FLASH_TIME	120

#define BOARD_GPIO_BTN_RESET	11
#undef BOARD_GPIO_BTN_WPS

#undef BOARD_GPIO_LED_ALL	
#undef  BOARD_GPIO_LED_WIFI  
#define BOARD_GPIO_LED_SW2G	72	/* soft led */
#define BOARD_GPIO_LED_SW5G	50	/* soft led */
#define BOARD_GPIO_LED_POWER	9
#define  BOARD_GPIO_LED_LAN        55
#define  BOARD_GPIO_LED_WAN      51
#define BOARD_GPIO_LED_USB	52
#undef  BOARD_GPIO_LED_ROUTER

#undef  BOARD_GPIO_PWR_USB
#define BOARD_HAS_5G_11AC	1
#define BOARD_NUM_ANT_5G_TX	2
#define BOARD_NUM_ANT_5G_RX	2
#define BOARD_NUM_ANT_2G_TX	2
#define BOARD_NUM_ANT_2G_RX	2
#define BOARD_NUM_ETH_LEDS	1
#define BOARD_HAS_EPHY_L1000	0
#define BOARD_HAS_EPHY_W1000	0

