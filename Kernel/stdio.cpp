/**
*  Copyright (C) Manas Kamal Choudhury 2021
*
*  stdio.h -- standard input output
*
*  /PROJECT - Aurora v1.0 {Xeneva}
*  /AUTHOR  - Manas Kamal Choudhury
*
*====================================================
*/

#include <stdio.h>
#include <aucon.h>
#include <stdint.h>
#include <va_list.h>
#include <string.h>
#include <ctype.h>

static char* chars = "0123456789ABCDEF";

extern void debug_print(const char *text, ...);

char* sztoa(uint64_t value, char* str, int base)
{
	if (base < 2 || base > 16)
		return nullptr;
	unsigned int i = 0;
	do
	{
		str[++i] = chars[value%base];
		value /= base;
	} while (value != 0);
	str[0] = '\0';
	for (unsigned int z = 0; z < i; ++z, --i)
	{
		char tmp = str[z];
		str[z] = str[i];
		str[i] = tmp;
	}
	return str;
}

void atow(char* buf, const char* source)
{
	while (*source != 0)*buf++ = *source++;
	*buf = '\0';
}

char integer_buffer[32];
const char* int_to_str(int value) {
	uint8_t size = 0;
	uint64_t size_tester = (uint64_t)value;
	while (size_tester / 10 > 0) {
		size_tester /= 10;
		size++;
	}

	uint8_t index = 0;
	uint64_t new_value = (uint64_t)value;
	while (new_value / 10 > 0) {
		uint8_t remainder = new_value % 10;
		new_value /= 10;
		integer_buffer[size - index] = remainder + 48;
		index++;
	}

	uint8_t remainder = new_value % 10;
	integer_buffer[size - index] = remainder + 48;
	integer_buffer[size + 1] = 0;
	return integer_buffer;
}

char float_to_string_output[32];
char* ftoa(float value, uint8_t decimal_places) {
	char* int_ptr = (char*)int_to_str((int)value);
	char* float_ptr = float_to_string_output;

	if (value < 0) {
		value *= -1;
	}


	while (*int_ptr != 0) {
		*float_ptr = *int_ptr;
		int_ptr++;
		float_ptr++;
	}

	*float_ptr = '.';
	float_ptr++;

	float new_value = value - (int)value;

	for (uint8_t i = 0; i < decimal_places; i++) {
		new_value *= 10;
		*float_ptr = (int)new_value + 48;
		new_value -= (int)new_value;
		float_ptr++;
	}

	*float_ptr = 0;

	return float_to_string_output;
}


int atoi(const char* s) {

	int n = 0, neg = 0;
	while (isspace(*s)) s++;
	switch (*s) {
	case '-': neg = 1;
	case '+': s++;
	}

	while (isdigit(*s))
		n = 10 * n - (*s++ - '0');
	return neg ? n : -n;
}

void printf(const char* format, ...){
	AuTextOut(format);
}

#define RAND_MAX 0x7FFFFFFF

static uint32_t r_x = 123456789;
static uint32_t r_y = 362436069;
static uint32_t r_z = 521288629;
static uint32_t r_w = 88675123;

int rand() {
	uint32_t t;

	t = r_x ^ (r_x << 11);
	r_x = r_y; r_y = r_z; r_z = r_w;
	r_w = r_w ^ (r_w >> 19) ^ t ^ (t >> 8);

	return (r_w & RAND_MAX);
}

void srand(unsigned int seed) {
	r_w ^= seed;
}