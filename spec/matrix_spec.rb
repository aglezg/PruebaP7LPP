require 'matrix'

describe Matrix do

  before :each do
    @m1 = Matrix.new(2,2,2)
    @m2 = Matrix.new(2,2,5)
  end

  describe "# Se instancian correctamente el número de filas y columnas" do
    it "Se instancia correctamente el número de filas" do
      expect(@m1.nrows).to eq(2)
    end
    it "Se isntancia correctamente el numero de columnas" do
      expect(@m1.ncols).to eq(2)
    end
  end

  describe "# Suma de 2 matrices" do
    it "Se suman las matrices de dimesions 2x2 @m1 y @m2" do
      aux = Matrix.new(2,2,7)
      expect((@m1 + @m2).data).to eq(aux.data)
    end
  end

  describe "# Resta de 2 matrices" do
    it "Se restan las matrices de dimesions 2x2 @m1 y @m2" do
      aux = Matrix.new(2,2,-3)
      expect((@m1 - @m2).data).to eq(aux.data)
    end
  end

  describe "# Producto escalar de una matriz" do
    it "Se realiza el producto escalar de @m1 por 5" do
      aux = Matrix.new(2,2,10)
      expect((@m1 * 5).data).to eq(aux.data)
    end
    it "Se realiza el producto escalar de @m2 por 3" do
      aux = Matrix.new(2,2,15)
      expect((@m2 * 3).data).to eq(aux.data)
    end
  end

  describe "# Traspuesta de una matriz" do
    it "Se realiza la traspuesta de @m1 " do
      aux = Matrix.new(2,2,2)
      expect((@m1.Transpose).data).to eq(aux.data)
    end
  end

  describe "# Multiplicación de matrices" do
    it "Se realiza la multiplicación de @m1 por @m2" do
      aux = Matrix.new(2,2,20)
      expect((@m1 ** @m2).data).to eq(aux.data)
    end
  end

end