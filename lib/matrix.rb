class Matrix

  # Getters
  attr_reader :nrows, :ncols, :data

  # Constructor
  def initialize(nrows, ncols, valor = nil)
    @nrows, @ncols = nrows, ncols
    @data = Array.new(nrows) {Array.new(ncols)}
    SetValue(valor) if (valor != nil)
  end 

  # Introducir valor
  def SetValue(valor)
    
    itrow = 0

      while itrow < @nrows
        itcol = 0
    
        while itcol < @ncols
          @data[itrow][itcol] = valor
          itcol += 1
        end
    
        itrow += 1
      end

  end

  # Operador de sobrecarga []
  def [](row,col)
    @data[row][col]
  end

  # Operador de sobrecargaga []=
  def []=(row,col, value)
    @data[row][col] = value
  end

  # Imprimir por pantalla
  def Print()

    itrow = 0

    while itrow < @nrows
      itcol = 0
      while itcol < @ncols
        print "[#{@data[itrow][itcol]}] "
        itcol += 1
      end
      puts
      itrow += 1
    end

  end

  # Suma de 2 matrices
  def + (other)
    raise 'No se puede realizar la suma: Las matrices poseen distinta dimensión' unless 
    (@nrows == other.nrows && @ncols == other.ncols)
    
    result = Matrix.new(@nrows, @ncols)
    itrow = 0

    while itrow < @nrows
      itcol = 0
      while itcol < @ncols
        result[itrow,itcol] = @data[itrow][itcol] + other[itrow,itcol] 
        itcol += 1
      end
      itrow += 1
    end

    return result
  end 


  # Resta de 2 matrices
  def - (other)
    self + other * -1
  end

  # Producto escalar
  def * (value)
    raise 'No se puede realizar el producto: El parámetro introducido no es un número' unless 
    value.is_a? Numeric
    
    result = Matrix.new(@nrows, @ncols)
    itrow = 0

    while itrow < @nrows
      itcol = 0
      while itcol < @ncols
        result[itrow,itcol] = @data[itrow][itcol] * value
        itcol += 1
      end
      itrow += 1
    end

    return result
  end

  # Traspuesta
  def Transpose
    result = Matrix.new(@ncols, @nrows, 0)
   
    itrow = 0

    while itrow < @nrows
      itcol = 0
      while itcol < @ncols
        result[itcol,itrow] = @data[itrow][itcol]
        itcol += 1
      end
      itrow += 1
    end

    return result
  end

  # Multiplicación de matrices
  def **(other)
    raise 'No se puede realizar el producto: El nº de columnas de la matriz 1 no coincide con el nº de filas de la matriz 2' unless 
    (@ncols == other.nrows)

    result = Matrix.new(@nrows, other.ncols, 0)
    
    i, j, k = 0, 0, 0

    while i < @nrows
      while j < other.ncols
        while k < other.nrows
          result[i,j] += @data[i][k] * other[k,j]
          k += 1
        end
        k = 0
        j += 1
      end
      j = 0
      i += 1
    end

    return result

  end

end
