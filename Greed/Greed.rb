class Greed
  def score(dados)
    dic_numeros = {}
    pontuacao_final = 0

    dados.each do |number|
      if dic_numeros[number] == nil
        dic_numeros[number] = 1
      else
        dic_numeros[number] += 1
      end
    end

    dic_numeros.each do |numero, ocorrencia|
      if numero == 1 && ocorrencia >= 3
        pontuacao_final = 1000
        dic_numeros[numero] -= 3
      end

      if numero > 1 && ocorrencia >= 3
        pontuacao_final = numero * 100
        dic_numeros[numero] -= 3
      end

    end

    dic_numeros.each do |numero, ocorrencia|
      if numero == 1 && ocorrencia < 3
        pontuacao_final += dic_numeros[numero] * 100
      end

      if numero == 5 && ocorrencia < 3
        pontuacao_final += dic_numeros[numero] * 50
      end
    end

    return pontuacao_final
  end
end
