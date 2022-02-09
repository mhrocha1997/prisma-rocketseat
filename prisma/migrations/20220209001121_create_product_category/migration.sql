-- CreateTable
CREATE TABLE "ProductCAtegory" (
    "id" TEXT NOT NULL,
    "id_product" TEXT NOT NULL,
    "id_category" TEXT NOT NULL,

    CONSTRAINT "ProductCAtegory_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ProductCAtegory" ADD CONSTRAINT "ProductCAtegory_id_product_fkey" FOREIGN KEY ("id_product") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProductCAtegory" ADD CONSTRAINT "ProductCAtegory_id_category_fkey" FOREIGN KEY ("id_category") REFERENCES "category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
