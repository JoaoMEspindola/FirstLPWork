using XLSX, DataFrames
using LinearAlgebra
@time begin
    XLSX.openxlsx("ExcelFile.xlsx") do f
        df = DataFrame(XLSX.readtable("ExcelFile.xlsx", "Plan1", "B:M"))
        i = 1
        j = 12
        while j < 14
            matrix = (Matrix(Float64.(df[i:j, :])))
            if (det(matrix) != 0)
                println(DataFrame(matrix, :auto))
                println(DataFrame(inv(matrix), :auto))
            else
                println("ERROR... This matrix can't be inverted")
            end
            i += 1
            j += 1
        end
    end
end