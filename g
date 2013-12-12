[1mdiff --git a/ProcessBook.ipynb b/ProcessBook.ipynb[m
[1mindex bd0cdc4..e24c661 100644[m
[1m--- a/ProcessBook.ipynb[m
[1m+++ b/ProcessBook.ipynb[m
[36m@@ -95,7 +95,7 @@[m
      "language": "python",[m
      "metadata": {},[m
      "outputs": [],[m
[31m-     "prompt_number": 26[m
[32m+[m[32m     "prompt_number": 1[m
     },[m
     {[m
      "cell_type": "markdown",[m
[36m@@ -244,7 +244,7 @@[m
        ][m
       }[m
      ],[m
[31m-     "prompt_number": 3[m
[32m+[m[32m     "prompt_number": 2[m
     },[m
     {[m
      "cell_type": "markdown",[m
[36m@@ -268,7 +268,7 @@[m
       {[m
        "metadata": {},[m
        "output_type": "pyout",[m
[31m-       "prompt_number": 4,[m
[32m+[m[32m       "prompt_number": 3,[m
        "text": [[m
         "author\n",[m
         "Vladith            69\n",[m
[36m@@ -285,7 +285,7 @@[m
        ][m
       }[m
      ],[m
[31m-     "prompt_number": 4[m
[32m+[m[32m     "prompt_number": 3[m
     },[m
     {[m
      "cell_type": "code",[m
[36m@@ -303,11 +303,11 @@[m
        "output_type": "display_data",[m
        "png": "iVBORw0KGgoAAAANSUhEUgAAAmYAAAF+CAYAAAAoQdbhAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz\nAAALEgAACxIB0t1+/AAAIABJREFUeJzt3Xl4VEWi/vH3dCAbRJRgFkiAIENACMsNRIxLAiISVLiy\nyjBAEERwQUSBUdGAchnUq3dACYioRFRExx25Cgz74DBeIS4gCgIBHRI2QQmrSf3+4En/aJJAZ6FT\nob+f5+nnoatPn6pTXUlezqlT7RhjjAAAAFDlXFXdAAAAAJxGMAMAALAEwQwAAMASBDMAAABLEMwA\nAAAsQTADAACwBMEM1cKkSZPkcvlmuM6bN08ul0u7du1yl6WmpqpFixY+qV+SGjdurKFDh/qsvvI4\nevSoRo4cqejoaLlcLj3wwANV3aQySU9PV0hISFU3w2v79+9X//79Va9ePblcLs2YMcMn9fpy7Kem\npqpTp06Vvl9f/v4AKoqRCp8rCj5Fj5CQEDVo0EDdunXT888/ryNHjhR7j+M4chynTPUcO3ZMkyZN\n0qpVq8rcxpLqKmv957N48WJNnjy51Poru77K9txzz+mll17SXXfdpddff12DBw+u6iaVme19fKY/\n//nPWrRokSZMmKDXX39d3bp181ndvuqnCzXuq8PPE1DEYYFZ+Nq8efN0xx13aPLkybriiit06tQp\n5ebmasWKFVq6dKkaNmyojz76SAkJCe73FBQUqKCgQIGBgV7Xs3//fkVERGjSpEl6/PHHvX5fYWGh\nfv/9d4+6UlNTtXfvXm3evNnr/ZzPvffeq8zMTBUWFhZ77dSpU3K5XAoICKi0+ipbly5d9Msvv+jL\nL7+s6qaUS3p6uhYuXKhjx45VdVO80rRpU7Vp00bvvvuuT+u9EGO/NL///rskqUaNGpW63/L8/gCq\nSuWOfqAMbrrpJiUlJbmfT5gwQStWrNAtt9yiHj166LvvvlNwcLAkKSAgoNwhxdv/e+Tn56tWrVpy\nuVw++wVe2v/ia9as6ZP6K2Lv3r0KDw+v6mZY79ixY5VyyXTv3r265JJLKqFF9qrsQFakIr8/AF/j\nUias0qlTJz322GPKycnR66+/7i4vaY7Ihg0b1L17d0VERCgkJESNGzfW4MGDdfz4ce3cuVMRERGS\npMmTJ7svm95xxx0e+9u0aZMGDRqkunXrus/QlTTHrMhXX32l6667TrVq1VKjRo307LPPery+cuVK\nuVwurV692qN8586dcrlceu211ySdPluTmZkpY4zHZd2iOkuaY7Z//36NGDFCUVFRCgkJUUJCgubO\nnVtiPU899ZReeuklXXHFFQoODlZSUpL+7//+z6vP4Hz1FB3jt99+q1WrVhVre0kaN26stLQ0rV27\nVklJSQoJCdEVV1yh+fPne2xX2lygkj6Ton2uXLlS7du3V2hoqBISErR8+XJJ0rvvvquEhASFhIQo\nMTFRGzZsKLZfx3G0a9cu3XzzzQoLC1NUVJQefvhhFRQUFNv2zTffVIcOHRQaGqq6deuqX79+2rlz\np8c2RfOxsrOz1alTJ9WuXVt33313qf0inf7M+vfvr/DwcIWGhiopKUkffvhhsWM/cuSIsrKy3P19\nLn//+991/fXXq27duqpVq5aaNm2q++6775z9KZU+fqXzj/0zx15mZqaaNGmiWrVqqUuXLtq1a5cK\nCwv15JNPKiYmRqGhoerZs6cOHDhQrP/OnmP29ttvq0OHDqpTp44uueQSXXnllZoyZYr79d9//11T\npkxRs2bNFBoaqvDwcHXs2FHvv/++e5vSxtXs2bPVqlUrhYSEKDo6WiNHjtQvv/xSrE0tWrTQ5s2b\n1blzZ9WqVUsxMTF65plniu0vMzNTCQkJql27ti699FK1a9dOc+bMKbYdcC6cMYN1Bg0apEceeURL\nly7V8OHD3eVnnl3at2+fbrzxRkVERGjChAm67LLLtGvXLn388cc6evSoIiIiNGvWLI0aNUq9evVS\nr169JElXXHGFR139+/dXkyZNNHXqVJ08efKc7Tp06JC6deumXr16acCAAfrggw80btw4FRQUaPz4\n8WU6xpEjR2rPnj1aunSpRwCtV6+e+1jPPN7jx4+rU6dO+v7773Xvvffqiiuu0Pvvv68RI0bowIED\nmjBhgsf+Fy5cqCNHjmjUqFGSpKefflq9evXS9u3bz3lWwpt6rrzySs2fP18PP/ywwsLC9Oijj3q0\nvSSO42jHjh3q27evhg8frqFDh+rll19Wenq6EhMTdeWVV3ps6w3HcbR9+3b98Y9/1F133aXBgwfr\nmWeeUc+ePTVjxgxlZGTo3nvvleM4mjp1qvr27autW7d6/IEuKChQt27d1K5dOz399NNasWKFnnrq\nKR0+fFiZmZnu7aZNm6ZHH31Uffv21bBhw3Tw4EG98MILuuaaa/TVV195fG5F46RPnz4aOHCgLr30\n0lKPYe/evUpOTlZ+fr5Gjx6tyy+/XPPnz1evXr30xhtv6Pbbb1dKSormz5+v4cOH66qrrtKIESPO\n2S+bN2/WzTffrDZt2mjy5MkKDQ3Vtm3btGTJEq/6tSRlGftvvfWWTpw4odGjR+vgwYN6+umn1bdv\nX6WmpmrNmjV6+OGHtW3bNs2YMUNjx45VVlaW+71nj/tly5bp9ttvV5cuXTRt2jQFBARoy5Yt+sc/\n/uHeZvLkyZo6daqGDx+upKQk5efna8OGDfriiy902223eez7TFOmTNHjjz+uG264QaNGjdK2bds0\nc+ZMrV+/XuvXr3efNXccR4cPH1b37t3Vq1cv9e/fX++8844mTJighIQE91y/l19+Wffee6/69u2r\n0aNH69SpU/r222/1+eefn/czAzwYwMdeffVV4ziOWb9+fanb1KlTxyQmJrqfZ2RkGMdx3M8/+OAD\n4ziO+fLLL0vdx759+4zjOGby5MnFXivaX58+fUptX05OjrssJSXFOI5jpk2b5i4rKCgwnTp1MrVq\n1TKHDx82xhizYsUK4ziOWbVqlcc+d+zYYRzHMVlZWe6ye+65x+OYztS4cWMzdOhQ9/Pp06cbx3HM\na6+95lF/ly5dTHBwsDlw4IBHPZdffrk5dOiQe9uPPvrIOI5jFi1aVHJnlbEeY4xp2bKl6dSp0zn3\nV6RRo0bGcRyzZs0ad9m+fftMcHCweeihh9xlZ3/ORUr6TIr2uXbtWnfZkiVLjOM4Jjg42OzcudNd\nPmfOHOM4jlm2bJm7bMiQIcZxHDNy5EiPugYPHmxcLpf54YcfjDHG5OTkmBo1apgnn3zSY7sff/zR\nBAcHm0ceecRdVjROnn/+ea/65YEHHig2Xo4dO2auvPJKEx0dbU6dOuUur127tseYKM1f//pX4ziO\nx2d1tpL605iSx6+3Y//MsVdUZowxjzzyiHEcxyQkJJjff//dXf7HP/7RBAYGmuPHj3vUdeaYGjNm\njLn00ktNYWFhqcfStm1bc+utt56rS4qNq71795rAwEBz4403eux73rx5xnEc88ILLxQ7/vnz57vL\nTp48aaKjoz1+f/znf/6nSUhIOGc7AG9wKRNWql27tn777bdSXy86C/Hxxx+7JwyXR9EZJW8EBATo\nnnvucT93uVy65557dPToUa1YsaLcbfDGJ598ooiICP3pT3/yqH/MmDE6ceKEli1b5rF97969VadO\nHffza6+9VpK0Y8eOSq2nLOLj493tkE6fYYuPjz9vm863z2uuucb9vGjOYqdOndSoUaNi5SXVNXr0\n6GLPjTH63//9X0nSe++9p4KCAvXr10/79+93Py655BK1atWq2Gdfs2ZNr8+QfPLJJ0pMTNT111/v\nLgsODtbdd9+t3NzcEi+/nk/Rz8b7779f4o0l5VGWsd+7d2+PuXBFff+nP/3JY55XUlKSTp06pd27\nd5/zWI4cOaLPPvvsnNt8++232rp1q9fHs2zZMp06dUr333+/x5m0QYMGKTIyUp988onH9qGhoR4/\nEzVr1lRSUpK2b9/u0Y7du3d7PWUAKA3BDFY6cuSIwsLCSn09JSVFffr00eTJkxUeHq4ePXpo7ty5\nOnr0aJnqOfvS5rlERkaqdu3aHmV/+MMfJEk5OTllqrescnJy1LRp02KXY5o3b15i/Q0bNvR4ftll\nl0lSsfkzFa2nLM5uk3T6j9n52lSWfRaF0djY2BLLz67LcRw1bdrUo6zoMy2aP/bDDz9IOt0HERER\nHo8vv/xS+/bt83h//fr1vb55JCcnR/Hx8cXKK9Lf/fv317XXXqs777xTkZGR6t+/vxYsWFDivDlv\nlWXsV/QzOdPdd9+t+Ph4de/eXTExMUpPT9fHH3/ssc0TTzyhw4cPKz4+Xq1atdKDDz543juFi9p8\ndt+7XC41bdq02DE1aNCg2D7OHrsTJkxQWFiYkpKS1LRpU40aNUorV648ZzuAkhDMYJ2ffvpJv/76\na7E/mGd7++23tX79eo0ZM8Y9YT0hIaHYH8pzqewFRkubH1WRP4rlUdodaKYKV8fxpk1l7b/S9lmZ\nx1901unTTz/VsmXLij2KbugoUpYxdSHW1goODtaqVau0YsUK3XHHHfr+++81cOBAdezYUcePHz9n\nvZUxTivzM7n88su1ceNGffLJJ+rVq5fWrVunnj17qkePHu5trrvuOv3444/KyspSu3bt9Nprrykp\nKanEyfnl5U3bmzdvru+//17vvPOOOnfurEWLFqlz58669957K60d8A8+C2aNGzdWmzZt1K5dO91w\nww2+qhbVUNGdejfddNN5t+3QoYMmT56sdevWafHixdqxY4deeuklSZX/Ry83N7fY5dWisymNGzeW\n9P/PTB06dMhju5LOfJSlfY0aNdLWrVuLXZrasmWLR/0V5at6SlPUf7/++qtH+YU6I2mMKXYJ7OzP\ntOisamxsrDp37lzscfXVV5e7/kaNGrn79kwV7W/HcZSSkqKnnnpK2dnZyszM1Jdffqn33ntPUtnG\nqeTd2L9QatasqbS0NM2YMUM//PCDJkyYoEWLFmndunXubS699FINGjRI8+fP1+7du5WSkqKMjIxS\nQ1/RZe6z+76wsFBbt24t9zGFhISod+/emjNnjnbu3KmBAwcqMzNTe/bsKdf+4J98Fswcx9Hnn3+u\njRs36u9//7uvqkU1s3z5cj355JNq0qSJBg4cWOp2hw4dKvZLt127dpKkw4cPSzo9L0SSDh48WClt\nKyws1MyZM4s9Dw0Ndd/i36hRIwUEBBT7toEz7/ArUqtWLfexnM+tt96qffv26c033/Sof/r06QoO\nDlaXLl3KdUxVVU9pis6Sntl/+fn5ysrKumArt5/91UbPP/+8XC6XunfvLknq06ePAgIC9MQTT5T4\n/rOXfCiLW265RRs2bNDatWvdZcePH9esWbMUHR2txMTEMu+zpPF+9s9GUdg8s58LCgpKXdrBm7F/\nIZR0LG3btpX0/4/l7P4PDg5WfHy8Tpw4UeriwV27dlVgYKBmzJjh8XvkjTfe0N69e3XLLbd41b4z\nx+TZ7QgICFCrVq0kefczDhTx6XIZVXkZBfb59NNP9cMPP+j3339XXl6eli9frmXLlqlx48b66KOP\nzjlPZ968eZo5c6Z69eqlJk2a6NixY3r11VdVo0YN9enTR9Lp/722bNlSb731lpo1a6a6deuqSZMm\nHovalkVUVJSmT5+uXbt2qWXLlvrggw+0atUq/eUvf3HPh6tTp4769u2r559/Xo7jqEmTJlq0aFGJ\nl1c7dOgg6fQ3AHTr1k01atRQjx49FBoaWuxn5c4779ScOXM0bNgwbdy4UXFxcfrggw+0fPlyTZs2\nzX0GpKJ8Vc+ZzjzWrl27qmHDhho2bJjGjRsnl8ulV199VREREeecJF5eNWvW1Jo1azRw4EBdc801\nWrFihd59913ddddd7pAYFxenadOmady4ccrJyVHPnj116aWXaseOHfroo4/Uv39/ZWRklHg85zNh\nwgQtWLBAN998s0aPHq169erp9ddf15YtW/TGG294LO3h7X6feOIJrVq1SjfffLMaNWqkX375RbNn\nz1bt2rXdgaNly5bq2LGjHn74YR08eFCXXXaZ3nrrrVIvZXoz9ivLmcc5bNgwHThwQDfccINiYmL0\n888/64UXXlD9+vXdN0y0aNFCKSkpat++verVq6evvvpKL7/8sm655Rb3f87OFh4erscee0yPPfaY\nunbtqp49e2r79u2aOXOm2rZt67FMz9ltKq28a9euioyM1DXXXKOoqCht27ZNL7zwgtq0aePT79nF\nRcBXt3/GxcWZdu3amQ4dOpg33njDV9XCQkW3pBc9goKCTHR0tLnpppvM888/b44cOVLsPZMmTTIu\nl8v9fOPGjWbgwIGmcePGJjg42ERERJhu3bp5LMdgjDHr1683V111lQkODjaO47iXG8jIyDAul8vk\n5eUVq+vVV181LpfLYymB1NRU06JFC/P111+b6667zoSEhJiGDRuaZ555ptj79+/fb/r06WNq1apl\nwsPDzahRo8ymTZuKLZdRWFhoHnjgARMVFWVcLpdHnWcvl1G03zvvvNNERkaaoKAg06pVKzN37lyP\nbYqWLHjqqaeKtau0pUNKav/56jHGmFatWnm9XEbjxo1NWlpasfLU1NRi+9iwYYPp2LGjCQoKMo0b\nNzZ//etfzbx584p9JqXt03EcM2rUKI+ykvolPT3dhISEmF27dpnu3bubWrVqmcjISDNhwgSPZR2K\nfPjhhyYlJcWEhYWZWrVqmebNm5u7777bbN682eN4WrRo4VWfnNm2fv36mbp165rg4GDToUMH88EH\nHxTbztvlMlasWGF69eplYmJiTFBQkKlfv77p06eP+frrrz222759u7nxxhtNcHCwiY6ONhMnTjTL\nli0zLpfLY7kMb8d+aWNvxYoVxuVymYULF3qUF/2cn