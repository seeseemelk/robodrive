/**
 * @{
 *
 * @file
 * @brief       RoboDrive firmware
 *
 * @author      Sebastiaan de Schaetzen <sebastiaan.de.schaetzen@gmail.com>
 *
 * @}
 */

#include <stdio.h>
#include <shell.h>
#include <esp_wifi.h>

static int _wifi_init(int argc, char **argv)
{
	(void) argc;
	(void) argv;
	return 0;
	//wifi_scan_config_t config;
	//esp_scanesp_wifi_scan_start(&config, true);
}

static shell_command_t _commands[] =
{
	{"wifi_init", "Initialize wifi", _wifi_init},
	{NULL, NULL, NULL}
};

static void _enter_shell(void)
{
	char line[128];
	shell_run_forever(_commands, line, sizeof(line));
}

int main(void)
{
	puts("Initializing wifi...");
	wifi_init_config_t config = WIFI_INIT_CONFIG_DEFAULT();
	esp_wifi_init(&config);

	_enter_shell();
	return 0;
}
