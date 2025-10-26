defmodule ExGoogleSTT.Transcript do
  @moduledoc false
  defstruct [:content, :is_final, :words, :confidence]

  @type word :: %{
          word: String.t(),
          start_offset: non_neg_integer(),
          end_offset: non_neg_integer(),
          speaker_label: String.t() | nil,
          confidence: float()
        }

  @type t :: %__MODULE__{
          content: String.t(),
          is_final: boolean(),
          words: [word()] | nil,
          confidence: float() | nil
        }
end
