import Mathlib

open LinearAlgebra

theorem Axler_exercise_5_20 {K : Type _} [Field K] {V : Type _} [AddCommGroup V] [Module K V]
  {ι : Type _} (b : ι → V)
  (hb_span : Submodule.span K (Set.range b) = ⊤)
  (hb_ind : LinearIndependent K (fun i => b i))
  (T S : V →ₗ[K] V) (lam mu : ι → K)
  (hT : ∀ i, T (b i) = lam i • b i) (hS : ∀ i, S (b i) = mu i • b i)
  (hdistinct : Function.Injective lam) :
  S.comp T = T.comp S := by
  sorry
