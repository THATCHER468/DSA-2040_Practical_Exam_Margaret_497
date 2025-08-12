## 🧠 Schema Design Rationale

I chose a star schema for its simplicity and performance in OLAP environments. It consists of a central fact table (`SalesFact`) surrounded by dimension tables (`CustomerDim`, `ProductDim`, `TimeDim`, `StoreDim`). This structure enables efficient slicing, dicing, and aggregation of sales data across multiple dimensions, making it ideal for business intelligence tasks.
