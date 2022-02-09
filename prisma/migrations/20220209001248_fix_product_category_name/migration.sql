/*
  Warnings:

  - You are about to drop the `ProductCAtegory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ProductCAtegory" DROP CONSTRAINT "ProductCAtegory_id_category_fkey";

-- DropForeignKey
ALTER TABLE "ProductCAtegory" DROP CONSTRAINT "ProductCAtegory_id_product_fkey";

-- DropTable
DROP TABLE "ProductCAtegory";

-- CreateTable
CREATE TABLE "products_categories" (
    "id" TEXT NOT NULL,
    "id_product" TEXT NOT NULL,
    "id_category" TEXT NOT NULL,

    CONSTRAINT "products_categories_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "products_categories" ADD CONSTRAINT "products_categories_id_product_fkey" FOREIGN KEY ("id_product") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products_categories" ADD CONSTRAINT "products_categories_id_category_fkey" FOREIGN KEY ("id_category") REFERENCES "category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
