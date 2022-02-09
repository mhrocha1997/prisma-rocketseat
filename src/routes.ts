import { CreateProductWithExistingCategory } from './controllers/createProductWithExistingCategory';
import { CreateProductCategoryController } from './controllers/createProductCategoryController';
import { CreateCategoryController } from './controllers/createCategoryController';
import { CreateProductController } from './controllers/createProductController';
import { FindProductController } from './controllers/FindProductController';
import { FindCategoryController } from './controllers/FindCategoryController';
import { Router } from 'express';

const router = Router();

const createProduct = new CreateProductController();
const createCategory = new CreateCategoryController();
const createProductCategoryController = new CreateProductCategoryController();
const createProductWithExistingCategory = new CreateProductWithExistingCategory();
const findProduct = new FindProductController();
const findCategoryController = new FindCategoryController();

router.post("/product", createProduct.handle);
router.post("/category", createCategory.handle);
router.post("/categoryProduct", createProductCategoryController.handle);
router.post("/productWithCategory", createProductWithExistingCategory.handle);
router.get("/product/:id", findProduct.handle);
router.get("/category/:id", findCategoryController.handle);

export { router };

