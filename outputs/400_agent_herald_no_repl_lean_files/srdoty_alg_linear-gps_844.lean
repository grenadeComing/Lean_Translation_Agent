import Mathlib

open Matrix

theorem block_upper_2x2_group (F : Type*) [Field F] :
  let G : Set (Matrix (Fin 4) (Fin 4) F) :=
    { M | ∃ (A B C : Matrix (Fin 2) (Fin 2) F),
        M = fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧ det (A * C) ≠ 0 }
  in
    (1 : Matrix (Fin 4) (Fin 4) F) ∈ G ∧
    (∀ M N, M ∈ G → N ∈ G → M * N ∈ G) ∧
    (∀ M, M ∈ G → ∃ N, M * N = 1 ∧ N * M = 1) := by sorry
