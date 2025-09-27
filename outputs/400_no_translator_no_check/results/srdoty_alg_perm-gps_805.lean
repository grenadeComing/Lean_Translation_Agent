import Mathlib

open Equiv

theorem srdoty_alg_perm_gps_805 (n : ℕ) (hn : 1 ≤ n) :
  ∀ (t : List (Equiv.Perm (Fin n))),
    (∀ τ ∈ t, ∃ a b : Fin n, τ = Equiv.swap a b) ->
    List.prod t = 1 ->
    t.length % 2 = 0 := by
  sorry
