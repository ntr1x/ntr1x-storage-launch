ALTER TABLE `portals` DROP FOREIGN KEY `FK_portals_UserId`;
ALTER TABLE `portals` ADD CONSTRAINT `FK_portals_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `portals` DROP FOREIGN KEY `FK_portals_ThumbnailId`;
ALTER TABLE `portals` ADD CONSTRAINT `FK_portals_ThumbnailId` FOREIGN KEY (`ThumbnailId`) REFERENCES `resources` (`Id`) ON DELETE SET NULL;

ALTER TABLE `domains` DROP FOREIGN KEY `FK_domains_PortalId`;
ALTER TABLE `domains` ADD CONSTRAINT `FK_domains_PortalId` FOREIGN KEY (`PortalId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `templates` DROP FOREIGN KEY `FK_templates_PortalId`;
ALTER TABLE `templates` ADD CONSTRAINT `FK_templates_PortalId` FOREIGN KEY (`PortalId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `grants` DROP FOREIGN KEY `FK_grants_UserId`;
ALTER TABLE `grants` ADD CONSTRAINT `FK_grants_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `offers` DROP FOREIGN KEY `FK_offers_UserId`;
ALTER TABLE `offers` ADD CONSTRAINT `FK_offers_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `offers` DROP FOREIGN KEY `FK_offers_RelateId`;
ALTER TABLE `offers` ADD CONSTRAINT `FK_offers_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `offers` DROP FOREIGN KEY `FK_offers_ImageId`;
ALTER TABLE `offers` ADD CONSTRAINT `FK_offers_ImageId` FOREIGN KEY (`ImageId`) REFERENCES `resources` (`Id`) ON DELETE SET NULL;

ALTER TABLE `orders` DROP FOREIGN KEY `FK_orders_UserId`;
ALTER TABLE `orders` ADD CONSTRAINT `FK_orders_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `orders` DROP FOREIGN KEY `FK_orders_RelateId`;
ALTER TABLE `orders` ADD CONSTRAINT `FK_orders_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `params` DROP FOREIGN KEY `FK_params_RelateId`;
ALTER TABLE `params` ADD CONSTRAINT `FK_params_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `publications` DROP FOREIGN KEY `FK_publications_UserId`;
ALTER TABLE `publications` ADD CONSTRAINT `FK_publications_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `publications` DROP FOREIGN KEY `FK_publications_RelateId`;
ALTER TABLE `publications` ADD CONSTRAINT `FK_publications_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `publications` DROP FOREIGN KEY `FK_publications_ImageId`;
ALTER TABLE `publications` ADD CONSTRAINT `FK_publications_ImageId` FOREIGN KEY (`ImageId`) REFERENCES `resources` (`Id`) ON DELETE SET NULL;

ALTER TABLE `resources_images` DROP FOREIGN KEY `FK_resources_images_RelateId`;
ALTER TABLE `resources_images` ADD CONSTRAINT `FK_resources_images_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `resources_images` DROP FOREIGN KEY `FK_resources_images_ImageId`;
ALTER TABLE `resources_images` ADD CONSTRAINT `FK_resources_images_ImageId` FOREIGN KEY (`ImageId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `sessions` DROP FOREIGN KEY `FK_sessions_UserId`;
ALTER TABLE `sessions` ADD CONSTRAINT `FK_sessions_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `tokens` DROP FOREIGN KEY `FK_tokens_UserId`;
ALTER TABLE `tokens` ADD CONSTRAINT `FK_tokens_UserId` FOREIGN KEY (`UserId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `resources_uploads` DROP FOREIGN KEY `FK_resources_uploads_RelateId`;
ALTER TABLE `resources_uploads` ADD CONSTRAINT `FK_resources_uploads_RelateId` FOREIGN KEY (`RelateId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;

ALTER TABLE `resources_uploads` DROP FOREIGN KEY `FK_resources_uploads_UploadId`;
ALTER TABLE `resources_uploads` ADD CONSTRAINT `FK_resources_uploads_UploadId` FOREIGN KEY (`UploadId`) REFERENCES `resources` (`Id`) ON DELETE CASCADE;
