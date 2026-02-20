import { ArrowRight } from "lucide-react";

const Index = () => {
  return (
    <div className="flex min-h-screen items-center justify-center bg-background">
      <div className="text-center space-y-6 px-6">
        <div className="inline-flex items-center justify-center w-16 h-16 rounded-2xl bg-primary/10 mb-2">
          <ArrowRight className="w-8 h-8 text-primary" />
        </div>
        <h1 className="text-5xl font-bold tracking-tight text-foreground">
          Redirecionamento
        </h1>
        <p className="text-lg text-muted-foreground max-w-md mx-auto">
          Bem-vindo! Você está sendo redirecionado para o destino correto.
        </p>
        <div className="flex items-center justify-center gap-1.5 pt-2">
          <span className="w-2 h-2 rounded-full bg-primary animate-bounce [animation-delay:0ms]" />
          <span className="w-2 h-2 rounded-full bg-primary animate-bounce [animation-delay:150ms]" />
          <span className="w-2 h-2 rounded-full bg-primary animate-bounce [animation-delay:300ms]" />
        </div>
      </div>
    </div>
  );
};

export default Index;
