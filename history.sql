SELECT        [User].EmpNo, [User].Name, [User].SectionCodeID, SectionCode.Process, PartsStock.PartsCode, PartsStock.CATAGORI, PartsStock.ProdName, PartsStock.ProdSpec, RequestParts.QTY, PartsStock.KanbanNo, 
                         PartsStock.RackNo, RequestParts.Machine, RequestParts.DateTime
FROM            PartsStock INNER JOIN
                         RequestParts ON PartsStock.ID = RequestParts.PartsStockID INNER JOIN
                         [User] ON RequestParts.UserRequestID = [User].ID INNER JOIN
                         SectionCode ON [User].SectionCodeID = SectionCode.ID order by DateTime Asc