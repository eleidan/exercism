defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    matrix = %{ 71 => 'C', 67 => 'G', 84 => 'A', 65 => 'U' }
    dna
    |> Enum.map(&(matrix[&1]))
    |> List.to_charlist
  end
end
