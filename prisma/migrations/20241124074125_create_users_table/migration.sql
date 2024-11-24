/*
  Warnings:

  - You are about to drop the column `Content` on the `questions` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[content]` on the table `questions` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `content` to the `questions` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `questions_Content_key` ON `questions`;

-- AlterTable
ALTER TABLE `questions` DROP COLUMN `Content`,
    ADD COLUMN `content` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `deletedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `users_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `questions_content_key` ON `questions`(`content`);
