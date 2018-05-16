/*
 *
 *	Header file for disk format of new quotafile format
 *
 */

#ifndef GUARD_QUOTAIO_V2_H
#define GUARD_QUOTAIO_V2_H

#include <sys/types.h>
#include "quotaio.h"

/* Offset of info header in file */
#define V2_DQINFOOFF		sizeof(struct v2_disk_dqheader)
/* Supported version of quota-tree format */
#define V2_VERSION 1

struct v2_disk_dqheader {
	uint32_t dqh_magic;	/* Magic number identifying file */
	uint32_t dqh_version;	/* File version */
} __attribute__ ((packed));

/* Flags for version specific files */
#define V2_DQF_MASK  0x0000	/* Mask for all valid ondisk flags */

/* Header with type and version specific information */
struct v2_disk_dqinfo {
	uint32_t dqi_bgrace;	/* Time before block soft limit becomes
				 * hard limit */
	uint32_t dqi_igrace;	/* Time before inode soft limit becomes
				 * hard limit */
	uint32_t dqi_flags;	/* Flags for quotafile (DQF_*) */
	uint32_t dqi_blocks;	/* Number of blocks in file */
	uint32_t dqi_free_blk;	/* Number of first free block in the list */
	uint32_t dqi_free_entry;	/* Number of block with at least one
					 * free entry */
} __attribute__ ((packed));

struct v2r1_disk_dqblk {
	uint32_t dqb_id;	/* id this quota applies to */
	uint32_t dqb_pad;
	uint64_t dqb_ihardlimit;	/* absolute limit on allocated inodes */
	uint64_t dqb_isoftlimit;	/* preferred inode limit */
	uint64_t dqb_curinodes;	/* current # allocated inodes */
	uint64_t dqb_bhardlimit;	/* absolute limit on disk space
					 * (in QUOTABLOCK_SIZE) */
	uint64_t dqb_bsoftlimit;	/* preferred limit on disk space
					 * (in QUOTABLOCK_SIZE) */
	uint64_t dqb_curspace;	/* current space occupied (in bytes) */
	uint64_t dqb_btime;	/* time limit for excessive disk use */
	uint64_t dqb_itime;	/* time limit for excessive inode use */
} __attribute__ ((packed));

#endif
